//
//  RJSingleton.h
//  Lesson24Ex-2
//
//  Created by Hopreeeeenjust on 12.01.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RJSingleton : NSObject

+ (RJSingleton *)sharedInstance;

@property (strong, nonatomic) NSMutableArray *pointsArray;
@end
