//
//  UIColor+Theme.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/5.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (Theme)

/// 主色调
+(UIColor *)colorPrimary;

/// 背景色，白天：灰色，夜间：深黑
+(UIColor *)colorBackground;

/// 亮背景色白天：白色，夜间：深黑
+(UIColor *)colorBackgroundLight;

/// 背景色上面内容颜色
+(UIColor *)colorOnBackground;

/// 背景色上面内容背景颜色，例如card背景，会话界面item背景，其他的例如LinearLayout这样的控件，需要手动指定使用该属性
+(UIColor *)colorSurface;

/// colorSurface点击颜色
+(UIColor *)colorSurfaceClick;

/// colorSurface上面的主内容颜色，例如：card上面主要内容颜色，会话界面item上面标题颜色
+(UIColor *)colorOnSurface;


/// 分割线颜色
+(UIColor *)colorDivider;

+ (UIColor *)colorDivider2;

/// 侧滑背景
+(UIColor *)colorSlideBackground;

/// 亮白色，白色：纯白，夜间：暗一点白色
+(UIColor *)colorLightWhite;

/// 亮色按钮
+(UIColor *)secondButtonLight;

/// 文本消息左侧背景
+(UIColor *)leftChatBackground;

/// 文本消息右侧背景
+(UIColor *)rightChatBackground;

@end

NS_ASSUME_NONNULL_END
