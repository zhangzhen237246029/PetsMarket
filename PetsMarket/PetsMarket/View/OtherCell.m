//
//  OtherCell.m
//  PetsMarket
//
//  Created by tarena46 on 16/7/25.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "OtherCell.h"

@implementation OtherCell
- (UIImageView *)headIV {
    if(_headIV == nil) {
        _headIV = [[UIImageView alloc] init];
        [self.contentView addSubview:_headIV];
        _headIV.contentMode = UIViewContentModeScaleAspectFill;
        _headIV.clipsToBounds = YES;
        [_headIV mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.mas_equalTo(0);
            make.height.mas_equalTo(self.headIV.mas_width);
            
        }];
        
        
    }
    return _headIV;
}

- (UILabel *)titleLb {
    if(_titleLb == nil) {
        _titleLb = [[UILabel alloc] init];
        [self.contentView addSubview:_titleLb];
        _titleLb.font = [UIFont systemFontOfSize:14];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(4);
            make.top.mas_equalTo(self.headIV.mas_bottom).mas_equalTo(4);
            
        }];
        
        
    }
    return _titleLb;
}

- (UILabel *)timeLb {
    if(_timeLb == nil) {
        _timeLb = [[UILabel alloc] init];
        [self.contentView addSubview:_timeLb];
        _timeLb.font = [UIFont systemFontOfSize:13];
        _timeLb.textAlignment = NSTextAlignmentLeft;
        _timeLb.textColor = [UIColor grayColor];
        [_timeLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(self.titleLb);
            make.top.mas_equalTo(self.titleLb.mas_bottom).mas_equalTo(8);
            make.bottom.mas_equalTo(-4);
        }];
    }
    return _timeLb;
}

- (UILabel *)moneyLb {
    if(_moneyLb == nil) {
        _moneyLb = [[UILabel alloc] init];
        [self.contentView addSubview:_moneyLb];
        _moneyLb.textAlignment = NSTextAlignmentRight;
        _moneyLb.textColor = [UIColor redColor];
        _moneyLb.font = [UIFont systemFontOfSize:13];
        [_moneyLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-4);
            make.centerY.mas_equalTo(self.timeLb);
        }];
        
        
        
    }
    return _moneyLb;
}

@end
