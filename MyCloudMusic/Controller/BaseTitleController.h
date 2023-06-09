//
//  BaseTitleController.h
//  通用标题控制器
//  使用普通控件实现标题栏，目的是方便使用
//
//  Created by maxiaocui on 2022/8/28.
//

#import "BaseLogicController.h"
#import "SuperToolbarView.h"

NS_ASSUME_NONNULL_BEGIN

@interface BaseTitleController : BaseLogicController

/// 导航栏控件
@property (nonatomic, strong) SuperToolbarView *toolbarView;

/// 初始化导航栏，当然可以封装默认就添加，但这样会增加复杂度
-(void)initToolbar;

/// 是否添加toolbar
-(BOOL)isAddToolBar;


/// 左侧按钮
@property(nonatomic, strong) QMUIButton *leftButton;

/// 右侧按钮
@property(nonatomic, strong) QMUIButton *rightButton;

/// 添加左侧图片按钮
-(void)addLeftImageButton:(UIImage *)data;

/// 添加右侧图片按钮
-(void)addRightImageButton:(UIImage *)data;

/// 添加右侧文本按钮
/// @param data <#data description#>
-(void)addRightButton:(NSString *)data;

// 左侧按钮点击
/// @param sender <#sender description#>
-(void)onLeftClick:(QMUIButton *)sender;

/// 右侧按钮点击
/// @param sender <#sender description#>
-(void)onRightClick:(QMUIButton *)sender;

@end

NS_ASSUME_NONNULL_END
