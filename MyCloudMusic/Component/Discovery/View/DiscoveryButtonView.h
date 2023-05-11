//
//  DiscoveryButtonView.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/8.
//

#import <MyLayout/MyLayout.h>

NS_ASSUME_NONNULL_BEGIN

@interface DiscoveryButtonView : MyLinearLayout

/// 图标控件
@property(nonatomic,strong) UIImageView *iconView;

/// 标题控件
@property(nonatomic,strong) UILabel *titleView;

/// 只有没有推荐按钮，才显示日期，其他按钮没有使用
@property(nonatomic,strong) UILabel *tipView;

- (void)showWithTitle:(NSString *)title icon:(UIImage *)icon;

@end

NS_ASSUME_NONNULL_END
