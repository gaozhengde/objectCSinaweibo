//
//  GZDHomeViewController.m
//  GZDSina
//
//  Created by 高正德 on 15/10/18.
//  Copyright © 2015年 高正德. All rights reserved.
//

#import "GZDHomeViewController.h"
#import "GZDTwoViewController.h"
#import "GZDThreeViewController.h"
@interface GZDHomeViewController ()

@end

@implementation GZDHomeViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    //左边按钮
    self.navigationItem.leftBarButtonItem=[UIBarButtonItem itemWithNorImgName:@"navigationbar_friendsearch" selectedImgName:@"navigationbar_friendsearch_highlighted" addTarget:self action:@selector(leftBarButtonItemClick) forControlEvents:UIControlEventTouchUpInside];
    
    //右边按钮
    self.navigationItem.rightBarButtonItem =[UIBarButtonItem itemWithNorImgName:@"navigationbar_pop" selectedImgName:@"navigationbar_pop_highlighted" addTarget:self action:@selector(rightBarButtonItemClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}
-(void)leftBarButtonItemClick
{
    NSLog(@"%s",__func__);
    

    GZDTwoViewController *two =[[GZDTwoViewController alloc]init];
//    two.view.backgroundColor =[UIColor whiteColor];
    
    two.navigationItem.title =@"two";
    
    [self.navigationController pushViewController:two animated:YES];
    
    
    UITapGestureRecognizer *gusture =[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(jumpToThree)];
    two.navigationItem.backBarButtonItem =[[UIBarButtonItem alloc]initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:nil];
    
    [two.view addGestureRecognizer:gusture];
}

- (void)jumpToThree
{
    GZDThreeViewController *three =[[GZDThreeViewController alloc]init];
//    three.view.backgroundColor =[UIColor whiteColor];
 
    [self.navigationController pushViewController:three animated:YES];
    
}

- (void)rightBarButtonItemClick
{
    NSLog(@"%s",__func__);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 0;
}

/*
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
 
 // Configure the cell...
 
 return cell;
 }
 */

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
