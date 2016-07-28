//
//  MarkingViewModel.h
//  PetsMarket
//


//  Created by tarena46 on 16/7/26.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseViewModel.h"
#import "PetsModel.h"
#import "NetManager.h"

@interface MarkingViewModel : BaseViewModel

//有几个分区
@property(nonatomic)NSInteger sectionNum;
//没有分区有几行
-(NSInteger)ForSection:(NSInteger)section;


//NewestCell
//大图片
-(NSURL *)headIVForSection:(NSInteger)section Row:(NSInteger)row;
//小图片
//-(NSURL *)smallImageForSection:(NSInteger)section Row:(NSInteger)row;
//title
-(NSString *)titleForSection:(NSInteger)section Row:(NSInteger)row;
//money
-(NSString *)moneyForSection:(NSInteger)section Row:(NSInteger)row;
//时间或者浏览
-(NSString *)timeOrbrowseForSection:(NSInteger)section Row:(NSInteger)row;


//OtherCell
-(NSURL *)OtherheadIVForSection:(NSInteger)section Row:(NSInteger)row;
-(NSString *)OthertltleLbForSection:(NSInteger)section Row:(NSInteger)row;
-(NSString *)OthertimeLbForSection:(NSInteger)section Row:(NSInteger)row;
-(NSString *)OthermoneyLbForSection:(NSInteger)section Row:(NSInteger)row;


@property(nonatomic)PetsModel *model;

//分区头

-(NSURL *)ReusableViewHedaIVForSection:(NSInteger)section;
-(NSString *)liveTitle:(NSInteger)section;
-(NSString *)ReusableViewSmallTitleLbForSection:(NSInteger)section;
//-(UIButton *)ReusableViewBtnTagSection:(NSInteger)section;

//下一页详情页面
-(NSURL *)dateURLForSection:(NSInteger)section Row:(NSInteger)row;

@end














