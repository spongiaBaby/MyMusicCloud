//
//  SuperToolbarView.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/28.
//

#import "SuperToolbarView.h"

@implementation SuperToolbarView

- (instancetype)init{
    self=[super init];
    [self initViews];
    return  self;
}

-(void)initViews{
    self.myWidth=MyLayoutSize.fill;
    //系统导航栏高度是44，但看着太低了，所以增大
    self.heightSize.equalTo(@(50));
    
    //左侧按钮容器
    [self addSubview:self.leftContainer];
    
    //标题容器
    [self addSubview:self.centerContainer];
    [self.centerContainer addSubview:self.titleView];
    
    //右侧按钮容器
    [self addSubview:self.rightContainer];
}


-(SuperToolbarView *)addLeftItem:(UIView *)data{
    [self.leftContainer addSubview:data];
    return self;
}

-(void)addCenterView:(UIView *)data{
    //隐藏标题
    [self.titleView hide];
    
    [self.centerContainer addSubview:data];
}

-(SuperToolbarView *)addRightItem:(UIView *)data{
    [self.rightContainer addSubview:data];
    return self;
}


#pragma mark - 创建控件
- (MyLinearLayout *)leftContainer{
    if (!_leftContainer) {
        _leftContainer = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Horz];
        _leftContainer.gravity=MyGravity_Vert_Center;
        
        _leftContainer.leftPos.equalTo(@(12));
        _leftContainer.rightPos.equalTo(self.centerContainer.leftPos).offset(10);
        _leftContainer.myHeight=MyLayoutSize.fill;
        
    }
    return _leftContainer;
}

- (MyLinearLayout *)centerContainer{
    if (!_centerContainer) {
        _centerContainer = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Horz];
        _centerContainer.gravity=MyGravity_Vert_Center;
        
        _centerContainer.myCenterX=0;
        _centerContainer.myCenterY=0;
        _centerContainer.myWidth=MyLayoutSize.wrap;
        _centerContainer.myHeight=MyLayoutSize.fill;
        
    }
    return _centerContainer;
}

- (MyLinearLayout *)rightContainer{
    if (!_rightContainer) {
        _rightContainer = [[MyLinearLayout alloc] initWithOrientation:MyOrientation_Horz];
        _rightContainer.subviewSpace = PADDING_MEDDLE;
        _rightContainer.gravity=MyGravity_Horz_Right | MyGravity_Vert_Center;
        
        _rightContainer.rightPos.equalTo(@(12));
        _rightContainer.leftPos.equalTo(self.centerContainer.rightPos).offset(10);
        _rightContainer.myHeight=MyLayoutSize.fill;
        
    }
    return _rightContainer;
}

//todo titleView是加在_centerContainer之上，所以一定要_centerContainer创建出来，titleView才能显现出来，不然无法显现
- (UILabel *)titleView{
    if (!_titleView) {
        _titleView = [UILabel new];
        _titleView.myWidth = MyLayoutSize.wrap;
        _titleView.myHeight = MyLayoutSize.wrap;
        _titleView.numberOfLines = 1;
//        _titleView.text = @"标题";
        _titleView.font = [UIFont systemFontOfSize:TEXT_LARGE3];
//        _titleView.textColor = [UIColor colorOnSurface];
    }
    return _titleView;
}

@end
