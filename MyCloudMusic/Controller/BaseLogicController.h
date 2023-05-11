//
//  BaseLogicController.h
//  项目中通用的逻辑
//
//  Created by maxiaocui on 2022/8/6.
//

#import <MyLayout/MyLayout.h>
#import "BaseCommonController.h"
#import "PlaceholderView.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseLogicController : BaseCommonController<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong) NSMutableArray *datum;

/// 根容器
@property (nonatomic, strong) MyBaseLayout *rootContainer;
/// 容器
@property (nonatomic, strong) MyBaseLayout *container;

/// 头部容器
@property (nonatomic, strong) MyBaseLayout *superHeaderContainer;
@property (nonatomic, strong) MyBaseLayout *superHeaderContentContainer;

/// 底部容器
@property (nonatomic, strong) MyBaseLayout *superFooterContainer;
@property (nonatomic, strong) MyBaseLayout *superFooterContentContainer;

///占位控件
@property (nonatomic, strong) PlaceholderView *placeholderView;

/// frame容器，一般用来添加占位布局
@property (nonatomic, strong) MyBaseLayout *frameContainer;

/// 初始化垂直方向LinearLayout容器
- (void)initLinearLayout;

/// 初始化RelativeLayout容器，四边都在安全区内
- (void)initRelativeLayoutSafeArea;

/// 初始化垂直方向LinearLayout容器，四边都在安全区内
- (void)initLinearLayoutSafeArea;

/// 初始化TableView，四边都在安全区内
- (void)initTableViewSafeArea;

/// 使用默认分割线
- (void)initDefaultTableViewDivider;

- (void)initPlaceholderView;

#pragma mark - 加载数据

/// 加载数据方法
/// @param isPlaceholder 是否是通过placeholder控件触发的
-(void)loadData:(BOOL)isPlaceholder;

/// 加载数据方法
-(void)loadData;


#pragma mark - 界面方法

/// 关闭界面
-(void)finish;

@end

NS_ASSUME_NONNULL_END
