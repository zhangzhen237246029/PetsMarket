//
//  NetManager.m
//  PetsMarket
//
//  Created by 臻 曦 on 16/7/26.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import "NetManager.h"

@implementation NetManager
+ (id)getPetsDataCompletionHandler:(void (^)(PetsModel *, NSError *))completionHandler
{
    
    return [self GET:kRecommendPath parameters:nil completionHandler:^(id repsonseObj, NSError *error) {
        !completionHandler ?: completionHandler([PetsModel parse:repsonseObj],error);
    }];

}
@end
