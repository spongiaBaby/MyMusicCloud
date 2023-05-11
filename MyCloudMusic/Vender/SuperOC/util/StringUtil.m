//
//  StringUtil.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import "StringUtil.h"

@implementation StringUtil

+(BOOL)isBlank:(NSString *)data{
   if (!data) {
       return YES;
   }
   if ([data isKindOfClass:[NSNull class]]) {
       return YES;
   }
   if (!data.length) {
       return YES;
   }
   NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
   NSString *trimmedStr = [data stringByTrimmingCharactersInSet:set];
   if (!trimmedStr.length) {
       return YES;
   }
   return NO;
}

+ (BOOL)isNotBlank:(NSString *)data{
   return ![self isBlank:data];
}


+ (BOOL)isPassword:(NSString *)data{
   return data.length >= 6 && data.length <= 15;
}

+ (NSString *)formatMessageCount:(int)data{
   if (data > 99) {
       //显示99+
       return @"99+";
   }
   
   return [NSString stringWithFormat:@"%d",data];
}

@end
