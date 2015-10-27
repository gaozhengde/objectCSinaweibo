//
//  UIBarButtonItem+Extension.m
//  GZDSina
//
//  Created by 高正德 on 15/10/18.
//  Copyright © 2015年 高正德. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)



+ (instancetype)itemWithNorImgName:(NSString *)norImgName selectedImgName:(NSString *)selectedImgName addTarget:(nullable id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
     UIButton *button =[UIButton buttonWithType:UIButtonTypeCustom];
     [button setImage:[UIImage imageNamed:norImgName] forState:UIControlStateNormal];
     [button setImage:[UIImage imageNamed:selectedImgName] forState:UIControlStateHighlighted];
     
     [button addTarget:target action:action forControlEvents:controlEvents];
    
     button.frame =CGRectMake(0, 0, button.currentImage.size.width, button.currentImage.size.height);
    
    UIBarButtonItem *item =[[UIBarButtonItem alloc]initWithCustomView:button];
    
    return item;
    
}



+(instancetype)itemWithTitlt:(NSString *)title titleSize:(CGFloat)Size addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    
    [button setTitle:title forState:UIControlStateNormal];
    
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    button.titleLabel.font = [UIFont systemFontOfSize:Size];
    
    CGSize titleSize = [button.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:Size]} context:nil].size;
    
    button.frame = CGRectMake(0, 0, titleSize.width, titleSize.height);
    
    [button addTarget:target action:action forControlEvents:controlEvents];
    
    UIBarButtonItem *item = [[UIBarButtonItem alloc]initWithCustomView:button];
    
    return item;
}

+ (instancetype)backItemWithTitle:(NSString *)title titleSize:(CGFloat)size norImgName:(NSString *)norImgName highLightImgName:(NSString *)highLightImgName addTarget:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents
{
    
    UIButton *backBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    
    [backBtn setTitle:title forState:UIControlStateNormal];
    
    [backBtn setTitleColor:[UIColor darkGrayColor] forState:UIControlStateNormal];
    
    [backBtn setTitleColor:[UIColor orangeColor] forState:UIControlStateHighlighted];
    
    [backBtn.titleLabel setFont:[UIFont systemFontOfSize:size]];
    
    [backBtn setImage:[UIImage imageNamed:norImgName] forState:UIControlStateNormal];
    
    [backBtn setImage:[UIImage imageNamed:highLightImgName] forState:UIControlStateHighlighted];
    
    CGFloat backBtnH = backBtn.currentImage.size.height;
    
    CGFloat titleWith =[backBtn.currentTitle boundingRectWithSize:CGSizeMake(MAXFLOAT, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:size]} context:nil].size.width;
    
    CGFloat backBtnW = backBtn.currentImage.size.width + titleWith;
    
    backBtn.bounds =CGRectMake(0, 0, backBtnW, backBtnH);
    
    [backBtn addTarget:target action:action forControlEvents:controlEvents];
    
    UIBarButtonItem *item =[[UIBarButtonItem alloc]initWithCustomView:backBtn];
    
    return item;
    
}


@end
