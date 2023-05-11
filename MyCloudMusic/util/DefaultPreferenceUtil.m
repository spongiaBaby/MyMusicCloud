//
//  DefaultPreferenceUtil.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/6.
//

#import "DefaultPreferenceUtil.h"

static NSString * const TERMS_SERVICE = @"TERMS_SERVICE";

@implementation DefaultPreferenceUtil

+ (BOOL)isAcceptTermsServiceAgreement{
    if([[NSUserDefaults standardUserDefaults]objectForKey:TERMS_SERVICE]==nil){
        return  NO;
    }
    return [[NSUserDefaults standardUserDefaults]boolForKey:TERMS_SERVICE];
}

+ (void)setAcceptTermsServiceAgreement:(BOOL)data{
    //保存值
    [[NSUserDefaults standardUserDefaults]setBool:data forKey:TERMS_SERVICE];
    
    //同步，相当于写到文件
    [NSUserDefaults.standardUserDefaults synchronize];
}

@end
