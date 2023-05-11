//
//  SuperCommon.h
//  所有通用模型父类，例如：创建时间，更新时间字段
//
//  Created by maxiaocui on 2022/8/7.
//

#import "SuperBase.h"

NS_ASSUME_NONNULL_BEGIN

@interface SuperCommon : SuperBase

/// 创建时间
@property (nonatomic, strong) NSString *createdAt;

/// 更新时间
@property (nonatomic, strong) NSString *updatedAt;

@property (nonatomic, strong) NSString *detail;


@end

NS_ASSUME_NONNULL_END
