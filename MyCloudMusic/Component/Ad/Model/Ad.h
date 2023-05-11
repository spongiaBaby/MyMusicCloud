//
//  Ad.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Ad : SuperCommon

/// 标题
@property (nonatomic, strong) NSString *title;

/// 图片
@property (nonatomic, strong) NSString *icon;

/// 点击广告后跳转的地址
@property (nonatomic, strong) NSString *uri;

/// 类型，0：图片；10：视频；20：应用
@property (nonatomic, assign) Byte style;

@end

NS_ASSUME_NONNULL_END
