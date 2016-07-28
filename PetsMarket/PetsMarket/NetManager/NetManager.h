//
//  NetManager.h
//  PetsMarket
//
//  Created by 臻 曦 on 16/7/26.
//  Copyright © 2016年 IOS1604GroupA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PetsModel.h"
#import "BaseNetworking.h"

@interface NetManager : BaseNetworking
+ (id)getPetsDataCompletionHandler:(void(^)(PetsModel *model, NSError *error))completionHandler;
@end
