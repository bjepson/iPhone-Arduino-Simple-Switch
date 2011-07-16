//
//  HelloArduinoAppDelegate.h
//  HelloArduino
//
//  Created by Brian Jepson on 7/16/11.
//  Copyright 2011 O'Reilly Media. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HelloArduinoViewController;

@interface HelloArduinoAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet HelloArduinoViewController *viewController;

@end
