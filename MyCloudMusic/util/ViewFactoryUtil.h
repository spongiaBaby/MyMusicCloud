//
//  ViewFactoryUtil.h
//  主要用来创建常见View，方便在多个位置使用
//
//  Created by maxiaocui on 2022/8/6.
//


//腾讯开源的UI框架，提供了很多功能，例如：圆角按钮，空心按钮，TextView支持placeholder
#import <QMUIKit/QMUIKit.h>

//提供类似Android中更高层级的布局框架
#import <MyLayout/MyLayout.h>

#import <Foundation/Foundation.h>

#import "UIColor+Config.h"
#import "UIColor+Theme.h"

NS_ASSUME_NONNULL_BEGIN

@interface ViewFactoryUtil : NSObject

/// 小圆角，主色调按钮
+(QMUIButton *)primaryButton;

/// 主色调半圆角按钮
+(QMUIButton *)primaryHalfFilletButton;

/// 创建只有标题按钮（类似网页连接）
+(QMUIButton *)linkButton;

/// 小圆角，空心按钮
+(QMUIButton *)primaryOutlineButton;

/// 创建次要，半圆角，小按钮
+ (QMUIButton *)secondHalfFilletSmallButton;

/// 创建图片按钮
+(QMUIButton *)buttonWithImage:(UIImage *)data;

///创建TableView
+(UITableView *)tableView;

+(UICollectionView *)collectionView;
+(UICollectionViewFlowLayout *)collectionViewFlowLayout;

+(UIView *)smallDivider;


@end

NS_ASSUME_NONNULL_END
