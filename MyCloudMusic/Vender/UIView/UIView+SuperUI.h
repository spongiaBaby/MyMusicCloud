//
//  UIView+SuperUI.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SuperUI)

/// 设置隐藏控件
-(void)hide;

/// 设置隐藏控件，但还是暂用位置
-(void)invisible;

/// 显示控件
-(void)show;

/// 显示控件
/// @param show 是否显示
-(void)show:(BOOL)show;

/// 小圆角
-(void)smallRadius;

/// 设置View圆角大小
/// @param size <#size description#>
- (void)radiusWithSize:(float)size;

/// 设置View圆角，默认为10
- (void)radius;

/// 更改View锚点
/// 会自动修正位置的偏移
/// @param data <#data description#>
-(void)setViewAnchorPoint:(CGPoint)data;

@end

NS_ASSUME_NONNULL_END
