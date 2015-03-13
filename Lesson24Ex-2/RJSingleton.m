//
//  RJSingleton.m
//  Lesson24Ex-2
//
//  Created by Hopreeeeenjust on 12.01.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import "RJSingleton.h"

@implementation RJSingleton

static RJSingleton *singleton = nil;

+ (RJSingleton *)sharedInstance {
    @synchronized(self) {
        if ([singleton isEqual:nil]) {
            singleton = [[RJSingleton alloc] init];
        }
    }
    return singleton;
}

@end
