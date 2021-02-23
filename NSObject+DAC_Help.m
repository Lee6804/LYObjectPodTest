//
//  NSObject+DAC_Help.m
//  AispeechMobileApp
//
//  Created by Lee on 2019/2/25.
//  Copyright © 2019年 Lee. All rights reserved.
//

#import "NSObject+DAC_Help.h"

@implementation NSObject (DAC_Help)

BOOL obj_isNull(id obj)
{
    if (obj == nil || obj == (id)(kCFNull)) {
        return YES;
    }else if([obj isKindOfClass:[NSString class]] || [obj isKindOfClass:[NSDecimalNumber class]] || [obj isKindOfClass:[NSDictionary class]]){
        if ([obj isEqual:@""] ||
            [obj isEqual:@"NIL"] ||
            [obj isEqual:@"Nil"] ||
            [obj isEqual:@"nil"] ||
            [obj isEqual:@"NULL"] ||
            [obj isEqual:@"Null"] ||
            [obj isEqual:@"null"] ||
            [obj isEqual:@"(NULL)"] ||
            [obj isEqual:@"(Null)"] ||
            [obj isEqual:@"(null)"] ||
            [obj isEqual:@"<NULL>"] ||
            [obj isEqual:@"<Null>"] ||
            [obj isEqual:@"<null>"]) {
            return YES;
        } else {
            return NO;
        }
    }
//    else if ([obj isKindOfClass:[NSNumber class]]) {
//        if ([obj isEqualToNumber:@0]) {
//            return YES;
//        } else {
//            return NO;
//        }
//    }
    return NO;
}


@end
