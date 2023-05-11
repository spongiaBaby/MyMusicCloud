//
//  BaseController.h
//  父类控制器
//
//  Created by maxiaocui on 2022/8/6.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseController : UIViewController
/// 找控件
- (void)initViews;


/// 设置数据
- (void)initDatum;

/// 设置监听器
- (void)initListeners;


@end

NS_ASSUME_NONNULL_END
