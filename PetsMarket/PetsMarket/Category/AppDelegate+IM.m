//
//  AppDelegate+IM.m
//  TRProject
//
//  Created by tarena31 on 16/7/21.
//  Copyright © 2016年 yingxin. All rights reserved.
//

#import "AppDelegate+IM.h"
#import <AFNetworkActivityIndicatorManager.h>
#import <MLTransition.h>
#import "UMMobClick/MobClick.h"

@implementation AppDelegate (IM)
-(void)configApplication:(NSDictionary *)options{
    [DDLog addLogger:[DDASLLogger sharedInstance]];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];
    
    UMConfigInstance.appKey = kAppKey;
    UMConfigInstance.channelId = @"App Store";
    [MobClick startWithConfigure:UMConfigInstance];
    [MobClick setLogEnabled:YES];
    [MLTransition validatePanBackWithMLTransitionGestureRecognizerType:MLTransitionGestureRecognizerTypeScreenEdgePan];
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        NSLog(@"%@", AFStringFromNetworkReachabilityStatus(status));
    }];
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

- (void)applicationWillResignActive:(UIApplication *)application {
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
}

- (void)applicationWillTerminate:(UIApplication *)application {
}

@end
