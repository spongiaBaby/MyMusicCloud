//
//  PlaceholderView.h
//  MyCloudMusic
//  界面占位控件
//  可以实现例如：出错了等，点击重新加载
//  Created by maxiaocui on 2022/8/7.
//

#import <MyLayout/MyLayout.h>

NS_ASSUME_NONNULL_BEGIN

@interface PlaceholderView : MyRelativeLayout

/// 图标控件
@property(nonatomic,strong) UIImageView *iconView;

/// 标题控件
@property(nonatomic,strong) UILabel *titleView;


/// 显示数据
/// @param title <#title description#>
/// @param icon <#icon description#>
-(void)showWithTitle:(NSString *)title icon:(UIImage *)icon;

@end

NS_ASSUME_NONNULL_END
