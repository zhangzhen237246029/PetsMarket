//
//  NSString+IM.m
//  网络练习
//
//  Created by tarena31 on 16/7/13.
//  Copyright © 2016年 tarena. All rights reserved.
//

#import "NSString+IM.h"

@implementation NSString (IM)
- (NSURL *)im_URL {
    return [NSURL URLWithString:self];
}
@end
