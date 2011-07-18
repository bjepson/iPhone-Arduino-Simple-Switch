//
//  HelloArduinoViewController.h
//  HelloArduino
//
//  Created by Brian Jepson on 7/16/11.
//  Copyright 2011 O'Reilly Media. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RscMgr.h"

#define BUFFER_LEN 1024

@interface HelloArduinoViewController : UIViewController <RscMgrDelegate> {
    
    RscMgr *rscMgr;
    UInt8 rxBuffer[BUFFER_LEN];
    UInt8 txBuffer[BUFFER_LEN];

    UISwitch *toggleSwitch;
}
@property (nonatomic, retain) IBOutlet UISwitch *toggleSwitch;
- (IBAction)toggleLED:(id)sender;

@end
