//
//  UIImage+SuperUI.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (SuperUI)

/// 根据颜色创建图片
/// @param color color description
+ (UIImage *)imageWithColor:(UIColor *)color;

/// 设置图片支持着色
-(UIImage *)withTintColor;

@end

NS_ASSUME_NONNULL_END
