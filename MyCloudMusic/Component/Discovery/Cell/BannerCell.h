//
//  BannerCell.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

//轮播图
#import <GKCycleScrollView/GKCycleScrollView.h>
#import <GKCycleScrollView/GKPageControl.h>

#import "BaseTableViewCell.h"
#import "BannerData.h"

NS_ASSUME_NONNULL_BEGIN

static NSString * const BannerCellName = @"BannerCellName";

@interface BannerCell : BaseTableViewCell

@property (nonatomic, strong) GKCycleScrollView *contentScrollView;
@property (nonatomic, strong) NSMutableArray *datum;

-(void)bind:(BannerData *)data;

@end

NS_ASSUME_NONNULL_END
