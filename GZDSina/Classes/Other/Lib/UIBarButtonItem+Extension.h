//
//  UIBarButtonItem+Extension.h
//  GZDSina
//
//  Created by 高正德 on 15/10/18.
//  Copyright © 2015年 高正德. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)


+ (instancetype)itemWithNorImgName:(NSString *)norImgName selectedImgName:(NSString *)selectedImgName addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

+(instancetype)itemWithTitlt:(NSString *)title titleSize:(CGFloat)Size addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

+ (instancetype)backItemWithTitle:(NSString *)title titleSize:(CGFloat)size norImgName:(NSString *)norImgName highLightImgName:(NSString *)highLightImgName addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;



@end
