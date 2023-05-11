//
//  ButtonData.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/8.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface ButtonData : SuperBase

/// 按钮列表
/// 类型为：IconTitleButtonData
@property (nonatomic, strong) NSMutableArray *datum;

/// 图标
@property(nonatomic, strong) UIImage *icon;

/// 标题
@property(nonatomic, strong) NSString *title;

@property(nonatomic, assign) ListStyle extra;

/// 根据图标，标题快速创建对象
+(instancetype)withIcon:(UIImage *)icon title:(NSString *)title extra:(ListStyle)extra;

@end

NS_ASSUME_NONNULL_END
