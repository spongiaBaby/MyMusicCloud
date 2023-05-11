//
//  DefaultPreferenceUtil.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DefaultPreferenceUtil : NSObject

/// 是否同意了用户条款
+(BOOL)isAcceptTermsServiceAgreement;

/// 设置同意了用户协议
/// @param data <#data description#>
+(void)setAcceptTermsServiceAgreement:(BOOL)data;

@end

NS_ASSUME_NONNULL_END
