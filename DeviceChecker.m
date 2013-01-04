//
//  DeviceChecker.m
//  nibchecker
//
//  Created by croath on 13-1-4.
//  Copyright (c) 2013年 croath. All rights reserved.
//

#import "DeviceChecker.h"

@implementation DeviceChecker

+ (NSString*)nibWithName:(NSString*)name{
    if (![self isiPhone5]) {
        return [name stringByAppendingString:@"_iPhone5"];
    } else {
        return name;
    }
}

+ (BOOL)isiPhone5{
    if ([[UIScreen mainScreen] bounds].size.height == 568) {
        return YES;
    } else {
        return NO;
    }
}

@end
