//
//  NSObject+DAC_Help.h
//  AispeechMobileApp
//
//  Created by Lee on 2019/2/25.
//  Copyright © 2019年 Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (DAC_Help)

/**
 *  判断对象是否为空
 *  nil、NSNull、@""、@"null"、@"(null)"、@"<null>"、@0 返回YES
 *
 *  @return YES 为空  NO 为实例对象
 */
BOOL obj_isNull(id obj);



@end
