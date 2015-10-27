//
//  UITabBarItem+Extension.m
//  GZDSina
//
//  Created by 高正德 on 15/10/18.
//  Copyright © 2015年 高正德. All rights reserved.
//

#import "UITabBarItem+Extension.h"

@implementation UITabBarItem (Extension)

+ (instancetype)tabBarItemWithTitle:(NSString *)title NorImgName:(NSString *)norImgName selectedImgName:(NSString *)selectedImgName
{
    
    UIImage *selectedImg = [UIImage imageNamed:selectedImgName];
    
    selectedImg =[selectedImg imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    UITabBarItem *item =[[UITabBarItem alloc]initWithTitle:title image:[UIImage imageNamed:norImgName] selectedImage:selectedImg];
    
    return item;
    
}



@end
