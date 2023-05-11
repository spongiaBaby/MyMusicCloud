//
//  IconTitleButtonData.m
//  MyCloudMusic
//  
//  Created by maxiaocui on 2022/8/8.
//

#import "IconTitleButtonData.h"

@implementation IconTitleButtonData

+ (instancetype)withTitle:(NSString *)title icon:(UIImage *)icon{
    IconTitleButtonData *result = [IconTitleButtonData new];
    
    result.title=title;
    result.icon=icon;
    
    return result;
}

@end
