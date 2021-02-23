//
//  DCAJsonAndStringMethod.h
//  iOS_DCA_SDK
//
//  Created by Lee on 2020/10/10.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DCAJsonAndStringMethod : NSObject

//MARK: - 字典转json字符串
+(NSString *)getJSONStringFromDictionary:(NSDictionary *)dictionary;

//MARK: - 数组转json字符串
+(NSString *)getJSONStringFromArray:(NSArray *)array;

//MARK: - JSON字符串转化为字典
+(NSDictionary *)getDictionaryFromJSONString:(NSString *)jsonString;

//MARK: - JSON字符串转化为数组
+(NSArray *)getArrayFromJSONString:(NSString *)jsonString;

@end

NS_ASSUME_NONNULL_END
