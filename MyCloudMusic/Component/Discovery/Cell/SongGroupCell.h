//
//  SongGroupCell.h
//  发现界面单曲组
//
//  Created by maxiaocui on 2022/8/28.
//

#import "BaseTableViewCell.h"
#import "ItemTitleView.h"
#import "SongData.h"

NS_ASSUME_NONNULL_BEGIN


static NSString * const SongGroupCellName = @"SongGroupCellName";

@interface SongGroupCell : BaseTableViewCell

/// 标题控件
@property(nonatomic,strong) ItemTitleView *titleView;

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSMutableArray *datum;

-(void)bind:(SongData *)data;
@end

NS_ASSUME_NONNULL_END
