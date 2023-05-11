//
//  SuperdateUtil.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/4.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SuperdateUtil : NSObject


+ (NSDate *)dateFromISO8801String:(NSString *)str;

/// 当前年
+(NSInteger)currentYear;

/// 当前天
+(NSInteger)currentDay;

/// 将NSDate格式转为yyyy-MM-dd HH:mm:ss.SSS
/// @param data <#data description#>
+ (NSString *)yearMonthDayHourMinuteSecondMillisecond:(NSDate *)data;

/**
 将float秒（3.867312）格式化为：150:11
 @return <#return value description#>
 */
+ (NSString *)second2MinuteSecond:(float)data;

/// 将分秒毫秒数据转为毫秒
/// @param data 格式为：00:06.429
+(int)parseToInt:(NSString *)data;

/// 将ISO8601字符串转为项目中通用的格式
/// 几秒钟前
/// 几天前
/// @param data <#data description#>
+(NSString *)commonFormatWithString:(NSString *)data;

+(NSString *)commonFormatWithDate:(NSDate *)data;

/// 转为yyyy-MM-dd HH:mm
/// @param data <#data description#>
+ (NSString *)yearMonthDayHourMinute:(NSString *)data;

/// 转为HH:mm:ss
+(NSString *)hhmmss:(NSDate *)data;

@end

NS_ASSUME_NONNULL_END
