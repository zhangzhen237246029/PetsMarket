//
//  CollectionReusableView.m
//  PetsMarket
//
//  Created by tarena46 on 16/7/27.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "CollectionReusableView.h"

@implementation CollectionReusableView

- (UIView *)bigView {
    if(_bigView == nil) {
        _bigView = [[UIView alloc] init];
        [self addSubview:_bigView];
        _bigView.backgroundColor = [UIColor colorWithRed:.9 green:.9 blue:.9 alpha:1.0];
        [_bigView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(0);
        }];
        
    }
    return _bigView;
}

- (UIView *)smallView {
    if(_smallView == nil) {
        _smallView = [[UIView alloc] init];
        [self.bigView addSubview:_smallView];
        _smallView.backgroundColor = [UIColor whiteColor];
        [_smallView mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(4);
            make.bottom.left.right.mas_equalTo(0);
        }];
        
        
        
    }
    return _smallView;
}

- (UIImageView *)headIV {
    if(_headIV == nil) {
        _headIV = [[UIImageView alloc] init];
        [self.smallView addSubview:_headIV];
        _headIV.contentMode = UIViewContentModeScaleAspectFill;
        _headIV.clipsToBounds = YES;
        [_headIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(5);
            make.top.mas_equalTo(6);
            make.bottom.mas_equalTo(-6);
            make.width.mas_equalTo(self.headIV.mas_height);
        }];
        
        
    }
    return _headIV;
}


- (UILabel *)titleLb {
    if(_titleLb == nil) {
        _titleLb = [[UILabel alloc] init];
        [self.smallView addSubview:_titleLb];
        _titleLb.font = [UIFont systemFontOfSize:15];
        
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.centerY.mas_equalTo(self.headIV);
            make.left.mas_equalTo(self.headIV.mas_right).mas_equalTo(5);
        }];
        
        
    }
    return _titleLb;
}

- (UILabel *)smallTitleLb {
    if(_smallTitleLb == nil) {
        _smallTitleLb = [[UILabel alloc] init];
        [self.smallView addSubview:_smallTitleLb];
        _smallTitleLb.font = [UIFont systemFontOfSize:11];
        _smallTitleLb.textColor = [UIColor grayColor];
        
        [_smallTitleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.titleLb.mas_right).mas_equalTo(5);
            make.centerY.mas_equalTo(self.titleLb);
        }];
        
        
        
    }
    return _smallTitleLb;
}


- (UIButton *)btn {
    if(_btn == nil) {
        _btn = [UIButton buttonWithType:UIButtonTypeSystem];
        [self.smallView addSubview:_btn];
        [_btn setTitle:@"更多>" forState:UIControlStateNormal];
        [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        [_btn addTarget:self action:@selector(clickAction:) forControlEvents:UIControlEventTouchUpInside];
        
        [_btn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(50, 30));
            make.centerY.mas_equalTo(self.titleLb);
            make.right.mas_equalTo(-5);
        }];
    }
    return _btn;
}

-(void)clickAction:sender{

    !_sharebtnClicked ?:_sharebtnClicked(self);
}


@end
