//
//  SuperdateUtil.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/4.
//

#import "SuperdateUtil.h"

static NSString * const ISO8601_DATE_TIME_FORMAT = @"yyyy-MM-dd'T'HH:mm:ss.SSSzzz";
static NSString * const YYMMDDHHMM = @"yyyy-MM-dd HH:mm";
static NSString * const HHMMSS = @"HH:mm:ss";


@implementation SuperdateUtil
+(NSInteger)currentYear{
    //当前日期
    NSDate *date = [NSDate date];
    
    //这句是说你要获取日期的元素有哪些。获取年就要写NSYearCalendarUnit，获取小时就要写NSHourCalendarUnit，中间用|隔开
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    unsigned int unitFlags = NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay;
    
    NSDateComponents *d = [cal components:unitFlags fromDate:date];
    
    //然后就可以从d中获取具体的年月日了
    NSInteger year = [d year];
//    NSInteger month = [d month];
//    NSInteger day  =  [d day];
    return year;
}

+(NSInteger)currentDay{
    //当前日期
    NSDate *date = [NSDate date];
    
    //这句是说你要获取日期的元素有哪些。获取年就要写NSYearCalendarUnit，获取小时就要写NSHourCalendarUnit，中间用|隔开
    NSCalendar *cal = [NSCalendar currentCalendar];
    
    unsigned int unitFlags = NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay;
    
    NSDateComponents *d = [cal components:unitFlags fromDate:date];
    
    return [d day];
}

+ (NSString *)yearMonthDayHourMinuteSecondMillisecond:(NSDate *)data{
    NSDateFormatter *dateFomatter =[[NSDateFormatter alloc] init];
    [dateFomatter setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSS"];
    NSString *result=[dateFomatter stringFromDate:data];
    return result;
}

+ (NSString *)second2MinuteSecond:(float)data{
    int minute=data/60;
    int second=((int)data)%60;
    return [NSString stringWithFormat:@"%02d:%02d",minute,second];
}

+(int)parseToInt:(NSString *)data{
    //将:替换为.
    data=[data stringByReplacingOccurrencesOfString:@":" withString:@"."];
    
    //.拆分
    NSArray *strings = [data componentsSeparatedByString:@"."];
    int m=[strings[0] intValue];
    int s=[strings[1] intValue];
    int ms=[strings[2] intValue];
    
    return (m*60+s)*1000+ms;
}

+ (NSDate *)dateFromISO8801String:(NSString *)str{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //    [dateFormatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    [dateFormatter setDateFormat:ISO8601_DATE_TIME_FORMAT];
    NSDate *date = [dateFormatter dateFromString:str];
    
    NSTimeZone *zone = [NSTimeZone systemTimeZone];
    NSInteger interval = [zone secondsFromGMTForDate:date];
    return [date dateByAddingTimeInterval:interval];
}

+(NSString *)commonFormatWithString:(NSString *)data{
    //先将字符串转为NSDate
    NSDate *date=[self dateFromISO8801String:data];
    
    //然后在格式化App使用的格式
    return [self commonFormatWithDate:date];
}

+(NSString *)commonFormatWithDate:(NSDate *)data{
    //    当前时间
    NSDate *now = [NSDate date];
    
    // 日历对象 （方便比较两个日期之间的差距）
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    // NSCalendarUnit 枚举代表想获得哪些差值
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitWeekOfMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    // 计算两个日期之间的差值
    NSDateComponents *cmps = [calendar components:unit fromDate:data toDate:now options:0];
    
    NSString *result=nil;
    if (cmps.second<=0) {
        result=@"现在";
    }else if (cmps.second>0&& cmps.minute<=0  ) {
        result=[NSString stringWithFormat:@"%ld秒前",cmps.second];
    }else if (cmps.minute>0&& cmps.hour<=0  ) {
        result=[NSString stringWithFormat:@"%ld分钟前",cmps.minute];
    }else if (cmps.hour>0&& cmps.day<=0  ) {
        result=[NSString stringWithFormat:@"%ld小时前",(long)cmps.hour];
    }else if (cmps.day>0&& cmps.weekOfMonth<=0  ) {
        result=[NSString stringWithFormat:@"%ld天前",(long)cmps.day];
    }
    else{
        result=[self format:YYMMDDHHMM date:data];
    }
    return result;
}

+(NSString *)format:(NSString *)format date:(NSDate *)data{
    NSDateFormatter *dateFomatter =[[NSDateFormatter alloc] init];
    //        不需要设置时区，应为字符串中已经带了，正常应该是服务端统一返回0时区，app工具系统的时区自动加减时区
    //        [dateFomatter setTimeZone:[NSTimeZone timeZoneWithAbbreviation:@"UTC"]];
    [dateFomatter setDateFormat:format];
    return [dateFomatter stringFromDate:data];
}

/// 转为yyyy-MM-dd HH:mm
/// @param data <#data description#>
+ (NSString *)yearMonthDayHourMinute:(NSString *)data{
    //先将字符串转为NSDate
    NSDate *date=[self dateFromISO8801String:data];
    return [self format:YYMMDDHHMM date:date];
}

/// 转为HH:mm:ss
+(NSString *)hhmmss:(NSDate *)data{
    return [self format:HHMMSS date:data];
}

@end
