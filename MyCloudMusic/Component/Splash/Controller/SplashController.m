//
//  SplashController.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/4.
//

#import <MyLayout/MyLayout.h>
#import "SplashController.h"
#import "SuperdateUtil.h"
#import "BaseLogicController.h"
#import "TermServiceDialogController.h"
#import "GuideController.h"
#import "AppDelegate.h"


@interface SplashController ()
@property (nonatomic, strong) TermServiceDialogController *dialogController;
@end

@implementation SplashController

-(void)initViews{
    [super initViews];
    
    [self setBackgroundColor:[UIColor colorBackground]];
    //根容器
    MyRelativeLayout *container = [[MyRelativeLayout alloc]init];

    //从安全区开始
    container.leadingPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    container.trailingPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    container.topPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    container.bottomPos.equalTo(@(MyLayoutPos.safeAreaMargin));
    
    [self.view addSubview:container];
    
    //banner
    UIImageView *bannerView=[UIImageView new];
    bannerView.myWidth=75;
    bannerView.myHeight=309;
    bannerView.myBottom=386;
    bannerView.myCenterX=0;
    bannerView.image=[UIImage imageNamed:@"SplashBanner"];
    [container addSubview:bannerView];
    
    //版权
    NSInteger year= [SuperdateUtil currentYear];
    
    UILabel *agrementView = [UILabel new];
    agrementView.myWidth=MyLayoutSize.wrap;
    agrementView.myHeight=20;
    agrementView.myBottom=20;
    agrementView.myCenterX=0;
    agrementView.font=[UIFont systemFontOfSize:12];
    agrementView.textColor=[UIColor grayColor];
    
    NSString *result=NSLocalizedString(@"Copyright", @"");
    result=[NSString stringWithFormat:result,year];
    agrementView.text=result;
    
    [container addSubview:agrementView];
    
    //logo
    UIImageView *logoView=[UIImageView new];
    logoView.myWidth=188;
    logoView.myHeight=31;
    logoView.bottomPos.equalTo(agrementView.topPos).offset(20);
    logoView.myCenterX=0;
    logoView.image=[UIImage imageNamed:@"SplashLogo"];
    logoView.contentMode=UIViewContentModeScaleAspectFit;
    [container addSubview:logoView];
}


- (void)initDatum{
    [super initDatum];
    if([DefaultPreferenceUtil isAccessibilityElement]){
        //已经同意过，下次就不需要了
        [self prepareNext];
    }else{
        [self showTermsServiceAgreementDialog];
    }
}

-(void)prepareNext{
    //[[AppDelegate shared] onInit];
    //[self performSelector:@selector(next) withObject:nil afterDelay:3];
    [self next];
}

-(void)next{
    [AppDelegate.shared toMain];
}



/// 显示同意服务条款对话框
- (void)showTermsServiceAgreementDialog{
    [self.dialogController show];
}


/// 返回控制器，懒加载方式
- (TermServiceDialogController *)dialogController{
    if (!_dialogController) {
        _dialogController=[TermServiceDialogController new];
        _dialogController.titleView.text = R.string.localizable.termServicePrivacy;
        [_dialogController.primaryButton addTarget:self action:@selector(primaryClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _dialogController;
}


/// 主按钮点击
/// @param sender <#sender description#>
-(void)primaryClick:(UIButton *)sender{
    [self.dialogController hide];
    
    [DefaultPreferenceUtil setAcceptTermsServiceAgreement:YES];
    
    //[[AppDelegate shared] onInit];
    
    [AppDelegate.shared toGuide];
}

@end
