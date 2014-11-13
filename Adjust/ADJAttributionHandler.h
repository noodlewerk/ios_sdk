//
//  ADJAttributionHandler.h
//  adjust
//
//  Created by Pedro Filipe on 29/10/14.
//  Copyright (c) 2014 adjust GmbH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADJActivityHandler.h"

@protocol ADJAttributionHandler

- (id)initWithActivityHandler:(id<ADJActivityHandler>) activityHandler withMaxDelay:(NSNumber* )milliseconds;

- (void)checkAttribution:(NSDictionary *)jsonDict;

- (void)getAttribution;

@end

@interface ADJAttributionHandler : NSObject <ADJAttributionHandler>

+ (id<ADJAttributionHandler>)handlerWithActivityHandler:(id<ADJActivityHandler>)activityHandler
                                          withMaxDelay:(NSNumber* )milliseconds;

@end