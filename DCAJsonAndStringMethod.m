//
//  DCAJsonAndStringMethod.m
//  iOS_DCA_SDK
//
//  Created by Lee on 2020/10/10.
//

#import "DCAJsonAndStringMethod.h"

@implementation DCAJsonAndStringMethod

//MARK: - 字典转json字符串
+(NSString *)getJSONStringFromDictionary:(NSDictionary *)dictionary {
    if (![NSJSONSerialization isValidJSONObject:dictionary]) {
        SBC_Log(@"无法解析出JSONString");
        return @"";
    }
    NSData *data = [NSJSONSerialization dataWithJSONObject:dictionary options:NSJSONWritingPrettyPrinted error:nil];
    NSString *JSONString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return JSONString;
}

//MARK: - 数组转json字符串
+(NSString *)getJSONStringFromArray:(NSArray *)array {
    if (![NSJSONSerialization isValidJSONObject:array]) {
        SBC_Log(@"无法解析出JSONString");
        return @"";
    }
    NSData *data = [NSJSONSerialization dataWithJSONObject:array options:NSJSONWritingPrettyPrinted error:nil];
    NSString *JSONString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    return JSONString;
}

//MARK: - JSON字符串转化为字典
+(NSDictionary *)getDictionaryFromJSONString:(NSString *)jsonString {
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    if (dic) {
        return dic;
    }
    return [NSDictionary new];
}

//MARK: - JSON字符串转化为数组
+(NSArray *)getArrayFromJSONString:(NSString *)jsonString {
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *array = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableContainers error:nil];
    if (array) {
        return array;
    }
    return [NSArray new];
}

@end
