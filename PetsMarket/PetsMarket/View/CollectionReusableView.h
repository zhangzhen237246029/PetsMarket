//
//  CollectionReusableView.h
//  PetsMarket
//
//  Created by tarena46 on 16/7/27.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionReusableView : UICollectionReusableView

@property(nonatomic)UIView *bigView;
@property(nonatomic)UIView *smallView;
@property(nonatomic)UIImageView *headIV;
@property(nonatomic)UILabel *titleLb;
@property(nonatomic)UILabel *smallTitleLb;
@property(nonatomic)UIButton *btn;

@property(nonatomic,copy)void(^sharebtnClicked)(CollectionReusableView *cell);
@end
