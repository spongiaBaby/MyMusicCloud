//
//  AppDelegate.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/4.
//

#import "AppDelegate.h"
#import "SplashController.h"
#import "GuideController.h"
#import "MainController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


+(instancetype)shared{
    return UIApplication.sharedApplication.delegate;
}

/// 显示引导界面
-(void)toGuide{
    GuideController *controller = [GuideController new];
    [self setRootViewController:controller];
}

///// 显示主界面
//-(void)toMain{
//    MainController *controller = [MainController new];
//    [self setRootViewController:controller];
//}

/// 显示主界面  因为后面要跳转界面，因此不能将MainController作为根容器，而应用navigationController将其包裹起来
-(void)toMain{
    MainController *controller = [MainController new];
    //这个为什么能解决导航栏默认图标和设定图标都显示的问题
    //这是因为如果不这样，就没有childViewControllers,那么就会在MainController上面加上返回按钮
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:controller];
    [self setRootViewController:navigationController];
}


-(void)setRootViewController:(UIViewController *)controller{
    self.window.rootViewController=controller;
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self initNetwork];
    
    //设置默认显示界面
    SplashController *controller = [[SplashController alloc] init];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = controller;
    [self.window makeKeyAndVisible];
    
    return YES;
}


/// 初始化网络框架
- (void)initNetwork{
#ifdef DEBUG
    //开启日志打印 默认打开(Debug级别)
    [MSNetwork openLog];
#endif
    
    //最终完整Url为[NSString stringWithFormat:@“%@%@”,_baseURL,URL]，
    [MSNetwork setBaseURL:ENDPOINT];
    
    //设置全局请求参数
    //NSDictionary *dic = @{@"accountToken":@{@"clientType":@"",@"tokenKey":@""}};
    //[MSNetwork setBaseParameters:dic];
    
    //设置网络请求超时时间
    [MSNetwork setRequestTimeoutInterval:10.0f];
    
    //设置网络请求头
    //可一次设置多个也可单独设置
    //[MSNetwork setHeadr:@{@"api-version":@"v1.0.0"}];
    //[MSNetwork setValue:@"9" forHTTPHeaderField:@"fromType"];
    
    //请求数据为json
    [MSNetwork setRequestSerializer:MSRequestSerializerJSON];
}

@end
