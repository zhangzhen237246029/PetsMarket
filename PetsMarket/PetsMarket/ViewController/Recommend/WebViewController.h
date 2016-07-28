//
//  WebViewController.h
//  PetsMarket
//
//  Created by tarena46 on 16/7/27.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebViewController : UIViewController
-(instancetype)initWithURL:(NSURL *)url;
@property(nonatomic)NSURL *url;
@end
