//
//  ClickEvent.h
//   点击事件，根据style区分具体是什么点击
//
//  Created by maxiaocui on 2022/8/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//要让一个类成为一个框架的事件就必须要加<>协议
@interface ClickEvent : NSObject<QTEvent>

/// 类型，取值常量文件，Style开头的
@property (nonatomic, assign) ListStyle style;

@end

NS_ASSUME_NONNULL_END
