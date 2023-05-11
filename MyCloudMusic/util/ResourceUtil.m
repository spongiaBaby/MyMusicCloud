//
//  ResourceUtil.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import "ResourceUtil.h"

@implementation ResourceUtil

+ (NSString *)resourceUri:(NSString *)data{
    return [NSString stringWithFormat:@"%@%@",RESOURCE_ENDPOINT,data];
}

@end
