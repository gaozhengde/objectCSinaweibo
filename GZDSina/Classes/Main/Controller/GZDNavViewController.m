//
//  GZDNavViewController.m
//  GZDSina
//
//  Created by 高正德 on 15/10/18.
//  Copyright © 2015年 高正德. All rights reserved.
//

#import "GZDNavViewController.h"

@interface GZDNavViewController ()

@end

@implementation GZDNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];

#warning 这里是怎么搞的上面会有黑色的边界
self.navigationBar.titleTextAttributes =@{NSFontAttributeName:[UIFont systemFontOfSize:20],NSForegroundColorAttributeName:[UIColor redColor]};
    self.navigationBar.backgroundColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_background_os7"]];
//    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"tabbar_background"] forBarMetrics:UIBarMetricsDefault];

#warning 神奇的红色
    
    [self.navigationBar setBackgroundColor:[UIColor whiteColor]];
    
//    self.navigationBar.barTintColor =[UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_background_os7"]];
//        self.navigationBar.barTintColor =[UIColor redColor];
//    self.navigationBar.tintColor =[UIColor redColor];

    UINavigationBar *navbar = [UINavigationBar appearance];
//    navbar.barTintColor =[UIColor redColor];
    //    [navbar setBackgroundImage:[UIImage imageNamed:@"navigationbar_background_os7"] forBarMetrics:UIBarMetricsDefault];
    [self.navigationBar setTranslucent:YES];
    
    
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    if(self.viewControllers.count>1)
    {
        viewController.hidesBottomBarWhenPushed =YES;}
    
    //拦截了push的操作  获得的count 是push之前的值
    
    NSInteger count = self.viewControllers.count;
    NSLog(@"%zd",count);
    if (count > 0) {
//        
//        viewController.tabBarController.tabBar.hidden =YES;
        //添加右边的点点点
//        viewController.tabBarController.tabBar.hidden =NO;
        viewController.navigationItem.rightBarButtonItem =[UIBarButtonItem itemWithNorImgName:@"navigationbar_more" selectedImgName:@"navigationbar_more_highlighted" addTarget:self action:@selector(backToRootViewController) forControlEvents:UIControlEventTouchUpInside];

    }
    
    
     
    
    if (count == 1) {
        UIViewController *previousVc =self.viewControllers[0];

        
        viewController.navigationItem.leftBarButtonItem =[UIBarButtonItem backItemWithTitle:previousVc.navigationItem.title titleSize:16 norImgName:@"navigationbar_back_withtext" highLightImgName:@"navigationbar_back_withtext_highlighted" addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    if(count > 1)
        
    {
        viewController.navigationItem.leftBarButtonItem =[UIBarButtonItem backItemWithTitle:@"返回" titleSize:16 norImgName:@"navigationbar_back_withtext" highLightImgName:@"navigationbar_back_withtext_highlighted"  addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    }
  [super pushViewController:viewController animated:animated];
   }


- (void)back
{
    [self popViewControllerAnimated:YES];
}
- (void)backToRootViewController
{
    [self popToRootViewControllerAnimated:YES];
    
}

@end
