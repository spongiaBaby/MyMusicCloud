//
//  SheetGroupCell.h
//  发现界面歌单组
//
//  Created by maxiaocui on 2022/8/14.
//

#import "BaseTableViewCell.h"
#import "SheetData.h"
#import "itemTitleView.h"

NS_ASSUME_NONNULL_BEGIN

@protocol SheetGroupDelegate<NSObject>

- (void)sheetClick:(Sheet *)data;

@optional

/// 这是一个可选方法，在这里没有任何作用，只是演示可选语法
- (void)testOptionalMethod;

@end

static NSString * const SheetGroupCellName = @"SheetGroupCellName";

@interface SheetGroupCell : BaseTableViewCell
/// 代理对象，目的是将歌单点击回调到外界，可以用EventBus，也可以用block
/// 这里就讲解多种方法，方便真实项目中不同情况下选择
@property (nonatomic, weak, nullable) id<SheetGroupDelegate> delegate;

@property (nonatomic, strong) ItemTitleView *titleView;
@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) NSMutableArray *datum;

- (void)bind:(SheetData *)data;

@end

NS_ASSUME_NONNULL_END
