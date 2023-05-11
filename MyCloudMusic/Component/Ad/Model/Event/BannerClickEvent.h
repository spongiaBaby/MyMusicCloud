//
//  BannerClickEvent.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import <Foundation/Foundation.h>

//发布订阅框架
#import <QTEventBus/QTEventBus.h>

#import "Ad.h"

NS_ASSUME_NONNULL_BEGIN

@interface BannerClickEvent : NSObject<QTEvent>

//可以携带任意数据
@property (nonatomic, strong) Ad *data;

@end

NS_ASSUME_NONNULL_END
