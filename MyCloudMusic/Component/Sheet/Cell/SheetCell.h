//
//  SheetCell.h
//  歌单Cell
//
//  Created by maxiaocui on 2022/8/21.
//

#import "BaseCollectionViewCell.h"
#import "Sheet.h"

NS_ASSUME_NONNULL_BEGIN

static NSString *const SheetCellName = @"SheetCellName";

@interface SheetCell : BaseCollectionViewCell


/// 封面
@property (nonatomic, strong) UIImageView *iconView;

/// 标题
@property (nonatomic, strong) UILabel *titleView;

- (void) bind:(Sheet *)data;

@end

NS_ASSUME_NONNULL_END
