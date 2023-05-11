//
//  Meta.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import "Meta.h"

@implementation Meta

+(int)nextPage:(Meta *)data{
    if (data == nil || data.next==0) {
        return 1;
    }
    return data.next;
}

@end
