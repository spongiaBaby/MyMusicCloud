//
//  BaseLogicController.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/6.
//

#import "BaseLogicController.h"

@interface BaseLogicController ()

@end

@implementation BaseLogicController

- (void)initViews{
    [super initViews];
    
    //隐藏系统导航栏，这样就不会在一个界面的顶部留白
    [self.navigationController.navigationBar setHidden:YES];
    
    [self setBackgroundColor:[UIColor colorBackground]];
}

-(void) initLinearLayout{\
    _rootContainer=[[MyBaseLayout alloc]init];
    _rootContainer=[MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    _rootContainer.myWidth=MyLayoutSize.fill;
    _rootContainer.myHeight=MyLayoutSize.fill;
    _rootContainer.backgroundColor=[UIColor clearColor];
    [self.view addSubview:_rootContainer];
}

-(void) initRelativeLayoutSafeArea{
    [self initLinearLayout];
    
    [self initHeaderContainer];
    
    _container=[[MyRelativeLayout alloc]init];
    _container.myWidth=MyLayoutSize.fill;
    _container.myHeight=MyLayoutSize.wrap;
    _container.weight=1;
    _container.backgroundColor=[UIColor clearColor];
    [_rootContainer addSubview:_container];
    
    [self initFooterContainer];
}


- (void)initPlaceholderView{
    _placeholderView = [PlaceholderView new];

    //默认隐藏
    _placeholderView.visibility = MyVisibility_Gone;

    [_rootContainer addSubview:self.placeholderView];

    //添加点击事件

    UITapGestureRecognizer *placeholderViewTapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onPlaceholderViewTapGestureRecognizer:)];

    //设置成false表示当前控件响应后会传播到其他控件上
    //如果不设置为false，界面里面的列表控件可能无法响应点击事件
    placeholderViewTapGestureRecognizer.cancelsTouchesInView = NO;

    [_placeholderView addGestureRecognizer:placeholderViewTapGestureRecognizer];
}

/// 头部容器，安全区外，一般用来设置头部到安全区外背景颜色
-(void)initHeaderContainer{
    self.superHeaderContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.superHeaderContainer.myWidth = MyLayoutSize.fill;
    self.superHeaderContainer.myHeight = MyLayoutSize.wrap;
    self.superHeaderContainer.backgroundColor = [UIColor clearColor];
    
    //头部内容容器，安全区内
    self.superHeaderContentContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.superHeaderContentContainer.backgroundColor = [UIColor clearColor];
    self.superHeaderContentContainer.leadingPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    self.superHeaderContentContainer.trailingPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    self.superHeaderContentContainer.topPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    self.superHeaderContentContainer.myHeight = MyLayoutSize.wrap;
    
    [self.superHeaderContainer addSubview:self.superHeaderContentContainer];
    [self.rootContainer addSubview:self.superHeaderContainer];
}

-(void)initFooterContainer{
    self.superFooterContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.superFooterContainer.myWidth = MyLayoutSize.fill;
    self.superFooterContainer.myHeight = MyLayoutSize.wrap;
    self.superFooterContainer.backgroundColor = [UIColor clearColor];
    
    //底部内容容器，安全区内
    self.superFooterContentContainer=[[MyLinearLayout alloc] initWithOrientation:MyOrientation_Vert];
    self.superFooterContentContainer.backgroundColor = [UIColor clearColor];
    self.superFooterContentContainer.leadingPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    self.superFooterContentContainer.trailingPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    self.superFooterContentContainer.bottomPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    self.superFooterContentContainer.myHeight=MyLayoutSize.wrap;
    
    [self.superFooterContainer addSubview:self.superFooterContentContainer];
    [self.rootContainer addSubview:self.superFooterContainer];
}

/// 初始化垂直方向LinearLayout容器，四边都在安全区内
- (void)initLinearLayoutSafeArea{
    [self initLinearLayout];
    
    //header
    [self initHeaderContainer];
    
    //frame
    self.frameContainer=[[MyRelativeLayout alloc]init];
    self.frameContainer.myWidth = MyLayoutSize.fill;
    self.frameContainer.myHeight = MyLayoutSize.wrap;
    self.frameContainer.weight=1;
    self.frameContainer.backgroundColor = [UIColor clearColor];
    [_rootContainer addSubview:self.frameContainer];
    
    _container = [MyLinearLayout linearLayoutWithOrientation:MyOrientation_Vert];
    _container.myWidth = MyLayoutSize.fill;
    _container.myHeight = MyLayoutSize.fill;
    _container.gravity = MyGravity_Vert_Stretch;
    _container.backgroundColor = [UIColor clearColor];
    [self.frameContainer addSubview:_container];
    
    //footer，一般是底部要显示按钮，例如：购物车界面，商城相关界面
    //当然也可以细分到需要的界面才添加，但这样会增加复杂度
    [self initFooterContainer];
}


/// 初始化TableView，四边都在安全区内
- (void)initTableViewSafeArea{
    //外面添加一层容器，是方便在真实内容控件前后添加内容
    [self initLinearLayoutSafeArea];

    //tableView
    [self createTableView];

    [self.container addSubview:self.tableView];
}

/// 创建TableView，不会添加到任何布局
-(void)createTableView{
    self.datum = [NSMutableArray array];

    self.tableView = [ViewFactoryUtil tableView];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.weight=1;
}

/// 使用默认分割线
- (void)initDefaultTableViewDivider{
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
}

#pragma mark - 界面方法

/// 关闭界面
-(void)finish{
    [self.navigationController popViewControllerAnimated:YES];
}


#pragma mark - 列表数据源

/// 有多少个
/// @param tableView <#tableView description#>
/// @param section <#section description#>
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _datum.count;
}

#pragma mark - 加载数据

/// 占位控件点击
/// @param recognizer <#recognizer description#>
-(void)onPlaceholderViewTapGestureRecognizer:(UITapGestureRecognizer *)recognizer{
    [self loadData:YES];
}


/// 加载数据方法
/// @param isPlaceholder 是否是通过placeholder控件触发的
-(void)loadData:(BOOL)isPlaceholder{
    
}

/// 加载数据方法
-(void)loadData{
    [self loadData:NO];
}

@end
