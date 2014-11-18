//
//  AdjustInit.m
//  example
//
//  Created by Pedro Filipe on 18/11/14.
//  Copyright (c) 2014 adjust. All rights reserved.
//

#import "ExampleAdjustHelper.h"
#import "Adjust.h"
#import "ADJLogger.h"

@implementation ExampleAdjustHelper

+ (void) initAdjust: (id<AdjustDelegate>)adjustDelegate {
    NSString * yourAppToken = @"{YourAppToken}";
    NSString * enviroment = AIEnvironmentSandbox;
    ADJConfig * adjustConfig = [ADJConfig configWithAppToken:yourAppToken andEnvironment:enviroment];

    // change the log level
    //[adjustConfig setLogLevel:ADJLogLevelVerbose];

    // enable event buffering
    //[adjustConfig setEventBufferingEnabled:YES];

    // disable MAC MD5 tracking
    //[adjustConfig setMacMd5TrackingEnabled:NO];

    // set an attribution delegate
    //[adjustConfig setDelegate:adjustDelegate];

    // set maximum waited to get the attribution
    //[adjustConfig setAttributionMaxTimeMilliseconds:10000];

    // add callback parameters to all events and sessions
    //[adjustConfig addPermanentCallbackParameter:@"key" andValue:@"value"];

    // add partner parameteres to all events and sessions
    //[adjustConfig addPermanentPartnerParameter:@"key" andValue:@"value"];

    Adjust * adjust = [Adjust getInstance];
    [adjust appDidLaunch:adjustConfig];
}

@end