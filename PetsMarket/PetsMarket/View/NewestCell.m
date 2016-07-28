//
//  NewestCell.m
//  PetsMarket
//
//  Created by tarena46 on 16/7/25.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "NewestCell.h"

@implementation NewestCell
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

//- (UIImageView *)smallImage {
//    if(_smallImage == nil) {
//        _smallImage = [[UIImageView alloc] init];
//        [self.contentView addSubview:_smallImage];
//        _smallImage.contentMode = UIViewContentModeScaleAspectFill;
//        _smallImage.clipsToBounds = YES;
//        [_smallImage mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_equalTo(4);
//            make.top.mas_equalTo(self.headIV.mas_bottom).mas_equalTo(4);
//            make.size.mas_equalTo(CGSizeMake(10, 10));
//        }];
//        
//        //更新约束
//        [self.titleLb mas_updateConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_equalTo(self.smallImage.mas_right).mas_equalTo(5).priorityHigh();
//        }];
//        //刷新
//        [self.contentView layoutIfNeeded];
//    }
//    return _smallImage;
//}

- (UILabel *)titleLb {
    if(_titleLb == nil) {
        _titleLb = [[UILabel alloc] init];
        _titleLb.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_titleLb];
        _titleLb.font = [UIFont systemFontOfSize:12];
        [_titleLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(4);
            //make.height.mas_equalTo();
            make.top.mas_equalTo(self.headIV.mas_bottom).mas_equalTo(4);
        }];
        
    }
    return _titleLb;
}

- (UILabel *)moneyLb {
    if(_moneyLb == nil) {
        _moneyLb = [[UILabel alloc] init];
        [self.contentView addSubview:_moneyLb];
        _moneyLb.textColor = [UIColor redColor];
        _moneyLb.textAlignment = NSTextAlignmentLeft;
        _moneyLb.font = [UIFont systemFontOfSize:12];
        
        [_moneyLb mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(4);
           // make.height.mas_equalTo(28);
            make.top.mas_equalTo(self.titleLb.mas_bottom).mas_equalTo(8);
            make.bottom.mas_equalTo(-4);
        }];
        
        
    }
    return _moneyLb;
}

- (UILabel *)timeOrbrowseLb {
    if(_timeOrbrowseLb == nil) {
        _timeOrbrowseLb = [[UILabel alloc] init];
        [self.contentView addSubview:_timeOrbrowseLb];
        _timeOrbrowseLb.font = [UIFont systemFontOfSize:12];
        _timeOrbrowseLb.textAlignment = NSTextAlignmentRight;
        [_timeOrbrowseLb mas_makeConstraints:^(MASConstraintMaker *make) {
           
            make.right.mas_equalTo(0);
            make.centerY.mas_equalTo(self.moneyLb);
            
        }];
        
    }
    return _timeOrbrowseLb;
}

@end
