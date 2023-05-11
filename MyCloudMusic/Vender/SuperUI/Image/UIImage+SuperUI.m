//
//  UIImage+SuperUI.m
//  MyCloudMusic
//
//  Created by maxiaocui on 2022/8/7.
//

#import "UIImage+SuperUI.h"

@implementation UIImage (SuperUI)

-(UIImage *)withTintColor{
    return [self imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
}

+ (UIImage *)imageWithColor:(UIColor *)color {

   CGRect rect = CGRectMake(0.0f,0.0f, 1.0f,1.0f);

    UIGraphicsBeginImageContext(rect.size);

    CGContextRef context =UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);

    CGContextFillRect(context, rect);

    UIImage *image =UIGraphicsGetImageFromCurrentImageContext();

    UIGraphicsEndImageContext();

   return image;

}

@end
