//
//  SuperToast.h
//  MyCloudMusic
//  超级Toast
//  Created by maxiaocui on 2022/8/7.
//

#import <Foundation/Foundation.h>

//指示器
#import <MBProgressHUD/MBProgressHUD.h>

NS_ASSUME_NONNULL_BEGIN

//window
#define KeyWindow [UIApplication sharedApplication].windows.firstObject

@interface SuperToast : NSObject

/// 显示提示
/// @param title 标题
+(void)showWithTitle:(NSString *)title;

/// 显示一个Loading，可以传入提示信息
/// @param title
+ (void)showLoading:(NSString *)title;

/// 显示一个Loading，使用默认的提示
+ (void)showLoading;

/// 隐藏Loading
+ (void)hideLoading;

@end

NS_ASSUME_NONNULL_END
