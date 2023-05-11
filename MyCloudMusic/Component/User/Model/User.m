//
//  User.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/28.
//

#import "User.h"

@implementation User

- (instancetype)init{
    self=[super init];
    //表示ios平台
    _platform = 10;
    return self;
}

- (BOOL)isFollowing{
    return _following != nil;
}
@end
