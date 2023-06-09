//
//  DefaultRepository.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import "DefaultRepository.h"
#import "Ad.h"
#import "Sheet.h"
#import "Song.h"

@implementation DefaultRepository

+(instancetype)shared{
    static DefaultRepository *instance = nil ;//1.声明一个空的静态的单例对象
    static dispatch_once_t onceToken; //2.声明一个静态的gcd的单次任务
    dispatch_once(&onceToken, ^{ //3.执行gcd单次任务：对对象进行初始化
        if (instance == nil) {
            instance = [[DefaultRepository alloc] init];
        }
    });
  return instance;
}

/// 视频列表
-(void)videos:(int)page success:(SuperHttpListSuccess)success{
    [SuperHttpUtil requestListObjectWith:[Video class] url:URL_VIDEO parameters:@{@"page":[NSNumber numberWithInt:page]} success:success];
}

/// 视频详情
-(void)videoDetail:(NSString *)id success:(SuperHttpSuccess)success{
    //[SuperHttpUtil requestObjectWith:[Video class] url:URL_VIDEO id:id success:success];
   
    [SuperHttpUtil requestObjectWith:[Video class] url:[NSString stringWithFormat:@"%@/%@",URL_VIDEO,id] parameters:nil cachePolicy:MSCachePolicyOnlyNetNoCache loading:YES controller:nil success:success];
}

/// 视频详情,可以手动处理错误
-(void)videoDetail:(NSString *)id success:(SuperHttpSuccess)success failure:(_Nullable SuperHttpFail)failure{
   
    [SuperHttpUtil requestObjectWith:[Video class] url:[NSString stringWithFormat:@"%@/%@",URL_VIDEO,id] parameters:nil cachePolicy:MSCachePolicyOnlyNetNoCache loading:YES controller:nil success:success failure:failure];
}

#pragma mark -广告
//VALUE0和服务端规定好，传0就放首页banner广告
-(void)bannerAdWithController:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    [self adsWithPosition:VALUE0 controller:controller success:success];
}


-(void)adsWithPosition:(int)position controller:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    //因为参数比较少，所以通过字典传递更方便
    [SuperHttpUtil requestListObjectWith:[Ad class] url:URL_AD parameters:@{@"position":[NSNumber numberWithInt:position]} cachePolicy:MSCachePolicyNetElseCache controller:controller success:success];
}


#pragma mark - 歌单
-(void)sheets:(int)size controller:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    [SuperHttpUtil requestListObjectWith:[Sheet class] url:URL_SHEET parameters:@{@"size":[NSNumber numberWithInt:size]} cachePolicy:MSCachePolicyNetElseCache controller:controller success:success];
}

#pragma mark - 单曲
-(void)songsWithController:(nullable BaseLogicController *)controller success:(SuperHttpListSuccess)success{
    [SuperHttpUtil requestListObjectWith:[Song class] url:URL_SONG parameters:nil cachePolicy:MSCachePolicyNetElseCache controller:controller success:success];
}


@end
