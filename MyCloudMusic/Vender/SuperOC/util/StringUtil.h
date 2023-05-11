//
//  StringUtil.h
//  MyCloudMusic
//  字符串相关工具类
//  Created by maxiaocui on 2022/8/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface StringUtil : NSObject

/// 是否是空白字符串
/// @param data <#data description#>
+ (BOOL)isBlank:(NSString *)data;

/// 是否不是空白字符串
/// @param data <#data description#>
+ (BOOL)isNotBlank:(NSString *)data;

/// 是否符合密码格式
/// @param data <#data description#>
+ (BOOL)isPassword:(NSString *)data;

/// 格式化消息数量
/// @param data <#data description#>
+ (NSString *)formatMessageCount:(int)data;

@end

NS_ASSUME_NONNULL_END
