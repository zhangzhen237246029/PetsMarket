//
//  MainTabBarController.m
//  PetsMarket
//
//  Created by tarena31 on 16/7/22.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "MainTabBarController.h"
#import "RecommendViewController.h"
#import "SellerTableViewController.h"
#import "MessageTableViewController.h"
#import "MeTableViewController.h"
#import "MainNavigationController.h"
#import "PublishViewController.h"

#import "PublishTabbar.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    RecommendViewController *rvc = [RecommendViewController new];
    
    SellerTableViewController *svc = [SellerTableViewController new];
    
    MessageTableViewController *mvc = [MessageTableViewController new];
    

    MeTableViewController *mtvc = [[MeTableViewController alloc]initWithStyle:UITableViewStyleGrouped];
    
    

    rvc.title = @"推荐";
    svc.title = @"商家";
    mvc.title = @"消息";
    mtvc.title = @"我的";
    

    self.tabBar.tintColor = [UIColor orangeColor];

    rvc.tabBarItem.image = [[UIImage imageNamed:@"home_recommend_31x31_"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    svc.tabBarItem.image = [[UIImage imageNamed:@"home_shop_31x31_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mvc.tabBarItem.image = [[UIImage imageNamed:@"home_message_31x31_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mtvc.tabBarItem.image = [[UIImage imageNamed:@"home_mine_31x31_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    rvc.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_recommend_down_31x31_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    svc.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_shop_down_31x31_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mvc.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_message_down_31x31_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    mtvc.tabBarItem.selectedImage = [[UIImage imageNamed:@"home_mine_down_31x31_"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    
    [self addChildViewController:rvc];
    [self addChildViewController:[[MainNavigationController alloc]initWithRootViewController:svc]];
    [self addChildViewController:[[MainNavigationController alloc]initWithRootViewController:mvc]];
    [self addChildViewController:[[MainNavigationController alloc]initWithRootViewController:mtvc]];
   
    
    
    //自定义tabbar;
    PublishTabbar *tabbar = [[PublishTabbar alloc]initWithFrame:self.tabBar.frame];
    
    //KVC 可以通过健值的方式对对象属性进行赋值和取值
    [self setValue:tabbar forKey:@"tabBar"];
    
    
    
    
    
    
    
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
