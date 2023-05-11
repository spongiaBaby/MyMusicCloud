//
//  Config.h
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


//本地开发环境，模拟器
//static NSString * const ENDPOINT = @"http://localhost:8080/";

//本地开发环境，局域网真机
//static NSString * const ENDPOINT = @"http://192.168.50.139:8080/";

//开发环境
static NSString * const ENDPOINT = @"http://my-cloud-music-api-sp3-dev.ixuea.com/";

#pragma mark - 资源端点
static NSString * const RESOURCE_ENDPOINT = @"http://course-music-dev.ixuea.com/";


@interface Config : NSObject


@end

NS_ASSUME_NONNULL_END
