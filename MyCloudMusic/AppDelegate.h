//
//  AppDelegate.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/4.
//

#import <UIKit/UIKit.h>


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow * window;


/// 获取单例对象
+(instancetype)shared;

/// 显示引导界面
-(void)toGuide;

/// 显示主界面
-(void)toMain;

/// 当用户同意了协议，并且也有权限时，会调用该方法
/// 主要是初始化一些需要用户同意了协议，并且有权限才能初始化的服务
/// 例如：腾讯移动推送服务
-(void)onInit;

@end

