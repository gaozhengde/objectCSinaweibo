//
//  GZDTabBarController.m
//  GZDSina
//
//  Created by 高正德 on 15/10/18.
//  Copyright © 2015年 高正德. All rights reserved.
//

#import "GZDTabBarController.h"
#import "GZDMeViewController.h"
#import "GZDHomeViewController.h"
#import "GZDMessageViewController.h"
#import "GZDDiscoverViewController.h"
#import "GZDNavViewController.h"
@interface GZDTabBarController ()

@end

@implementation GZDTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    GZDHomeViewController *homeVC = [[GZDHomeViewController alloc]init];
    
   [self setChildViewControllerWithController:homeVC Title:@"首页" norImaName:@"tabbar_home" selectedImgName:@"tabbar_home_selected"];
    
    
    GZDMessageViewController *messageVC = [[GZDMessageViewController alloc]init];
    
    [self setChildViewControllerWithController:messageVC Title:@"首页" norImaName:@"tabbar_message_center" selectedImgName:@"tabbar_message_center_selected"];
    
    GZDDiscoverViewController *discoverVC = [[GZDDiscoverViewController alloc]init];
    
    [self setChildViewControllerWithController:discoverVC Title:@"发现" norImaName:@"tabbar_discover" selectedImgName:@"tabbar_discover_selected"];
    
    
    GZDMeViewController *meVC = [[GZDMeViewController alloc]init];
    
    [self setChildViewControllerWithController:meVC Title:@"我的" norImaName:@"tabbar_profile" selectedImgName:@"tabbar_profile_selected"];
}



- (void)setChildViewControllerWithController:(UIViewController *)controller Title:(NSString *)title norImaName:(NSString *)norImgName selectedImgName:(NSString *)selectedImgName
{
    
    GZDNavViewController *nav =[[GZDNavViewController alloc]initWithRootViewController:controller];
    
    nav.tabBarItem =[UITabBarItem tabBarItemWithTitle:title NorImgName:norImgName selectedImgName:selectedImgName];
    
    controller.navigationItem.title =title;

    [self addChildViewController:nav];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
