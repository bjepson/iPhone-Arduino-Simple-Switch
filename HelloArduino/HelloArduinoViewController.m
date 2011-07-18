//
//  HelloArduinoViewController.m
//  HelloArduino
//
//  Created by Brian Jepson on 7/16/11.
//  Copyright 2011 O'Reilly Media. All rights reserved.
//

#import "HelloArduinoViewController.h"

@implementation HelloArduinoViewController
@synthesize toggleSwitch;

- (void)dealloc
{
    [toggleSwitch release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    rscMgr = [[RscMgr alloc] init]; 
    [rscMgr setDelegate:self];

}


- (void)viewDidUnload
{
    [self setToggleSwitch:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)toggleLED:(id)sender {
    if (toggleSwitch.on) { // check the state of the button
        txBuffer[0] = (int) '1';
    } else {
        txBuffer[0] = (int) '0';
    }
    
    // Send 0 or 1 to the Arduino
	[rscMgr write:txBuffer Length:1];        
}

#pragma mark - RscMgrDelegate methods

- (void) cableConnected:(NSString *)protocol {
    [rscMgr setBaud:9600];
	[rscMgr open]; 
}

- (void) cableDisconnected {
	
}

- (void) portStatusChanged {
    
}

- (void) readBytesAvailable:(UInt32)numBytes {
}

- (BOOL) rscMessageReceived:(UInt8 *)msg TotalLength:(int)len {
    return FALSE;    
}

- (void) didReceivePortConfig {
}

@end
