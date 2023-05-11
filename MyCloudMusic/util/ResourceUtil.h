//
//  ResourceUtil.h
//  MyCloudMusic
//  资源工具类
//  Created by maxiaocui on 2022/8/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ResourceUtil : NSObject

/// 将相对资源转为绝对路径
/// @param data <#data description#>
+(NSString *)resourceUri:(NSString *)data;

@end

NS_ASSUME_NONNULL_END
