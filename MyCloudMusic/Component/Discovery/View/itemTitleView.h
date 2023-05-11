//
//  itemTitleView.h
//  标题布局,目前主要用到发现界面
//
//  Created by maxiaocui on 2022/8/21.
//

#import <MyLayout/MyLayout.h>

NS_ASSUME_NONNULL_BEGIN

@interface ItemTitleView : MyRelativeLayout
/// 标题控件
@property(nonatomic,strong) UILabel *titleView;

/// 更多图标
@property(nonatomic,strong) UIImageView *moreIconView;
@end

NS_ASSUME_NONNULL_END
