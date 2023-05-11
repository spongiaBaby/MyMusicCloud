//
//  UIColor+SuperUI.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (SuperUI)

/// 快捷创建动态颜色
/// @param color 正常颜色
/// @param darkColor 深色颜色
+(UIColor *) withColor:(UIColor *)color darkColor:(UIColor *)darkColor;

@end

NS_ASSUME_NONNULL_END
