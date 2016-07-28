//
//  PublishTabbar.m
//  PetsMarket
//
//  Created by 臻 曦 on 16/7/27.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "PublishTabbar.h"
#import "PublishViewController.h"
#import "MainNavigationController.h"

@implementation PublishTabbar
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        UIButton *publishBtn = [[UIButton alloc]init];
        //设置图片
        [publishBtn setImage:[UIImage imageNamed:@"home_feed_50x50_"] forState:UIControlStateNormal];
        [self addSubview:publishBtn];
        [publishBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.top.equalTo(-15);
        }];
        
        [publishBtn bk_addEventHandler:^(id sender) {
            PublishViewController *vc = (PublishViewController *)[[UINavigationController alloc] initWithRootViewController:[PublishViewController new]];
            
            
            //得到项目中的tabbarController
            UIViewController *tbc = [UIApplication sharedApplication].keyWindow.rootViewController;
            
            [tbc presentViewController:vc animated:YES completion:nil];
        } forControlEvents:UIControlEventTouchUpInside];

        UILabel *publishLabel = [UILabel new];
        publishLabel.font = [UIFont systemFontOfSize:10];
        publishLabel.textColor = [UIColor grayColor];
        publishLabel.text = @"发布";
        [self addSubview:publishLabel];
        [publishLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.centerX.equalTo(0);
            make.top.equalTo(publishBtn.mas_bottom).equalTo(0);
            make.bottom.equalTo(0);
        }];
        
        
        
        
    }
    return self;

}
//子控件布局方法  此方法 每次显示之前会调用
- (void)layoutSubviews
{
    
    NSLog(@"%@",self.subviews);
    [super layoutSubviews];
    UIView *fView = self.subviews[4];
    UIView *uView = self.subviews[5];
    fView.center = CGPointMake(130, fView.center.y);
    uView.center = CGPointMake(290, uView.center.y);
    
    
   
}

@end
