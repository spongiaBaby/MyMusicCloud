//
//  UIColor+Hex.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Hex)

/// 从16进制创建颜色
/// @param hex 8位16进制，argb，a:ff完全不透明， 例如：0x33d6271c
/// 当然也可以扩展方法支持6位颜色
+ (UIColor *)colorWithHex:(int)hex;


@end

NS_ASSUME_NONNULL_END
