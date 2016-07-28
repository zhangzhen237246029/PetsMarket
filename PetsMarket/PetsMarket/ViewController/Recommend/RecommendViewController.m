//
//  RecommendViewController.m
//  PetsMarket
//
//  Created by 臻 曦 on 16/7/26.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "RecommendViewController.h"
#import "MarkingViewModel.h"
#import "NewestCell.h"
#import "OtherCell.h"
#import "CollectionReusableView.h"
#import "NetManager.h"
#import "WebViewController.h"

@interface RecommendViewController ()<UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>
@property (nonatomic) UIView *headView;
@property (nonatomic) UILabel *titleLabel;
@property (nonatomic) NSMutableArray<UIButton *> *btnArr;
@property (nonatomic) UIView *maskView;
@property (nonatomic) UIButton *btn;

@property(nonatomic)UICollectionView *collectionView;
@property(nonatomic)MarkingViewModel *model;

@property(nonatomic) UICollectionViewFlowLayout *layout;
@property(nonatomic)UICollectionView *COLV;
@end

@implementation RecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self addHeadView];
    _layout= [UICollectionViewFlowLayout new];
    _layout.minimumInteritemSpacing  = 10;
    _layout.minimumLineSpacing = 10;
    _layout.sectionInset = UIEdgeInsetsMake(10, 0, 10, 0);
    [_layout setHeaderReferenceSize:CGSizeMake([UIScreen mainScreen].bounds.size.width,40)];
    
    
    self.COLV = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 200, [UIScreen mainScreen].bounds.size.width,([UIScreen mainScreen].bounds.size.height-200-44)) collectionViewLayout:_layout];
    
    self.COLV.backgroundColor = [UIColor whiteColor];
    self.COLV.delegate = self;
    self.COLV.dataSource = self;
    [self.view addSubview:self.COLV];
    
    __weak typeof (self)weakSelf = self;
    [self.COLV addHeaderRefresh:^{
        [weakSelf.model getDataWithMode:RequestModeMore completionHandler:^(NSError *error) {
            [weakSelf.COLV reloadData];
            [weakSelf.COLV endHeaderRefresh];
        }];
    }];
    
    
    [self.COLV.mj_header beginRefreshing];
    
    
    [self.COLV registerClass:[NewestCell class] forCellWithReuseIdentifier:@"cell0"];
    [self.COLV registerClass:[OtherCell class] forCellWithReuseIdentifier:@"cell1"];
    
    [self.COLV registerClass:[CollectionReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head"];
    
    
    

    
}


- (void)addHeadView
{
    self.headView = [UIView new];
    [self.view addSubview:self.headView];
    self.headView.backgroundColor = kRGB(254, 199, 0, 1);
    [self.headView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.top.equalTo(0);
        make.height.equalTo(150);
    }];
    //主题名字；
    self.titleLabel = [UILabel new];
    self.titleLabel.text = @"宠物市场";
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont systemFontOfSize:20];
    [self.headView addSubview:self.titleLabel];
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(0);
        make.top.equalTo(22);
    }];
    
    
    self.maskView = [UIView new];
    self.maskView.backgroundColor = [UIColor clearColor];
    [self.headView addSubview:self.maskView];
    [self.maskView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(0);
        make.height.equalTo(100);
    }];
    //上面的四个button；
    self.btnArr = [NSMutableArray array];
    UIButton *tmpBtn = nil;
    for (int i = 0; i < 4; i ++) {
        UIButton *btn = [[UIButton alloc]init];
        btn.backgroundColor = [UIColor clearColor];
        [self.maskView addSubview:btn];
        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.height.equalTo(btn.mas_width);
            make.top.equalTo(0);
            if (i == 0) {
                make.left.equalTo(50);
            }
            else
            {
                make.left.equalTo(tmpBtn.mas_right).equalTo(50);
                make.width.equalTo(tmpBtn);
                if (i == 3) {
                    make.right.equalTo(-50);
                }
            }
        }];
        tmpBtn = btn;
        self.btn = btn;
        [self.btnArr addObject:btn];
    }
    //设置每个button的图片;
    [self.btnArr[0] setImage:[UIImage imageNamed:@"home_nearby_38x38_"] forState:UIControlStateNormal];
    [self.btnArr[0] setImage:[UIImage imageNamed:@"home_nearby_38x38_"] forState:UIControlStateHighlighted];
    
    [self.btnArr[1] setImage:[UIImage imageNamed:@"home_dog_38x38_"] forState:UIControlStateNormal];
    [self.btnArr[1] setImage:[UIImage imageNamed:@"home_dog_38x38_"] forState:UIControlStateHighlighted];
    
    [self.btnArr[2] setImage:[UIImage imageNamed:@"home_cat_38x38_"] forState:UIControlStateNormal];
    [self.btnArr[2] setImage:[UIImage imageNamed:@"home_cat_38x38_"] forState:UIControlStateHighlighted];
    
    [self.btnArr[3] setImage:[UIImage imageNamed:@"home_other_38x38_"] forState:UIControlStateNormal];
    [self.btnArr[3] setImage:[UIImage imageNamed:@"home_other_38x38_"] forState:UIControlStateHighlighted];
    
    NSArray *labelArr = @[@"附近", @"狗狗", @"猫猫", @"小宠"];
    UILabel *tmpLabel = nil;
    for (int i = 0; i < 4; i ++) {
        UILabel *label = [[UILabel alloc]init];
        label.text = labelArr[i];
        label.font = [UIFont systemFontOfSize:13];
        label.textAlignment = NSTextAlignmentCenter;
        [self.maskView addSubview:label];
        [label mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.equalTo(self.btn.mas_bottom).equalTo(0);
            make.height.equalTo(20);
            if (i == 0) {
                make.left.equalTo(50);
            }
            else
            {
                make.left.equalTo(tmpLabel.mas_right).equalTo(50);
                make.width.equalTo(tmpLabel);
                if (i == 3) {
                    make.right.equalTo(-50);
                }
            }
           
        }];
         tmpLabel = label;
        
    }
    
    //搜索栏的button
    UIButton *searchBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [searchBtn setTitle:@"🔍请输入您要找的宠物名称" forState:UIControlStateNormal];
//    searchBtn.backgroundColor = [UIColor whiteColor];
    searchBtn.titleLabel.textColor = [UIColor grayColor];
    searchBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:searchBtn];
    
    [searchBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.headView.mas_bottom).equalTo(-20);
        make.left.equalTo(10);
        make.right.equalTo(-10);
        make.height.equalTo(40);
    }];
    
    
    
    
    

}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0 || indexPath.section == 1) {
        _layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10);
        
        CGFloat width = (long)([UIScreen mainScreen].bounds.size.width - 40 ) / 3;
        CGFloat height = width + 40;
        
        return CGSizeMake(width, height);
        
    }else{
        _layout.sectionInset = UIEdgeInsetsMake(10, 0, 10, 0);
        
        CGFloat width =([UIScreen mainScreen].bounds.size.width - 10) / 2.0;
        CGFloat height = width + 50;
        
        return CGSizeMake(width, height);
    }
}



//分区
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return self.model.sectionNum;
}

//每个分区有几个 cell
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [self.model ForSection:section];
    
    
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.section == 0 || indexPath.section == 1) {
        
        NewestCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell0" forIndexPath:indexPath];
        [cell.headIV setImageWithURL:[self.model headIVForSection:indexPath.section Row:indexPath.row] placeholder:nil];
        cell.titleLb.text = [self.model titleForSection:indexPath.section Row:indexPath.row];
        cell.moneyLb.text = [self.model moneyForSection:indexPath.section Row:indexPath.row];
        cell.timeOrbrowseLb.text = [self.model timeOrbrowseForSection:indexPath.section Row:indexPath.row];
        
        [self.COLV scrollToItemAtIndexPath:indexPath atScrollPosition:UICollectionViewScrollPositionCenteredHorizontally animated:YES];
        
        return cell;
        
        
    }else{
        OtherCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cell1" forIndexPath:indexPath];
        [cell.headIV setImageWithURL:[self.model OtherheadIVForSection:indexPath.section Row:indexPath.row] placeholder:nil];
        cell.titleLb.text = [self.model OthertltleLbForSection:indexPath.section Row:indexPath.row];
        cell.timeLb.text = [self.model OthertimeLbForSection:indexPath.section Row:indexPath.row];
        cell.moneyLb.text = [self.model OthermoneyLbForSection:indexPath.section Row:indexPath.row];
        
        return cell;
        
    }
}

//分区头
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath{
    
    
    UICollectionReusableView *reusableView =nil;
    
    if (kind == UICollectionElementKindSectionHeader) {
        //定制头部视图的内容
        CollectionReusableView *headerV = [self.COLV dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"head"forIndexPath:indexPath];
        
        headerV.titleLb.text = [self.model liveTitle:indexPath.section];
        [headerV.headIV setImageURL:[self.model ReusableViewHedaIVForSection:indexPath.section]];
        headerV.smallTitleLb.text = [self.model ReusableViewSmallTitleLbForSection:indexPath.section];
        
        headerV.btn.tag = indexPath.section;
        [headerV setSharebtnClicked:^(CollectionReusableView *headerV) {
            NSLog(@"1111111");
        }];
        
        reusableView = headerV;
    }
    return reusableView;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{
    
    WebViewController *wvc = [[WebViewController alloc] initWithURL: [self.model dateURLForSection:indexPath.section Row:indexPath.row]];
    
    [self presentViewController:wvc animated:YES completion:nil];
    
}

- (MarkingViewModel *)model {
    if(_model == nil) {
        _model = [[MarkingViewModel alloc] init];
    }
    return _model;
}






@end
