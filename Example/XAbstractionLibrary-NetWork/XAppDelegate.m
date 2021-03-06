//
//  XAppDelegate.m
//  XAbstractionLibrary-NetWork
//
//  Created by jiaojiaozhe on 07/11/2018.
//  Copyright (c) 2018 jiaojiaozhe. All rights reserved.
//

#import "XAppDelegate.h"
#import "HttpRequestManager.h"
#import "HttpsRequestManager.h"

@interface XAppDelegate()<XHttpResponseDelegate>

@end

@implementation XAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    // Override point for customization after application launch.
    
//    NSMutableDictionary *requestParams = [NSMutableDictionary dictionary];
//    DICT_PUT(requestParams, @"param", @"vS6Hr1V0kIIRu+A9sJL5MDHNh9N1P1FLk0CcHtaF8WF4CzJGky2/Lj/q+fuo1X4s");
//
//    NSMutableDictionary *requestHeaderParams = [NSMutableDictionary dictionary];
//    DICT_PUT(requestHeaderParams, @"hKey", @"hValue");
//
//    [[HttpRequestManager shareHttpRequestManager] postRequestWithCommand:@"opertationsActivity/getDynamicImageList"
//                                                              postParams:requestParams
//                                                        postHeaderParams:requestHeaderParams
//                                                            httpDelegate:self
//                                                           responseblock:^(id<XHttpRequestDelegate> httpRequest, id responseObj, NSError *error) {
//                                                                XLOG(@"1~~~");
//                                                            }];
//
//    [[HttpRequestManager shareHttpRequestManager] postRequestWithCommand:@"opertationsActivity/getDynamicImageList"
//                                                              postParams:requestParams
//                                                        postHeaderParams:requestHeaderParams
//                                                            httpDelegate:self
//                                                           responseblock:^(id<XHttpRequestDelegate> httpRequest, id responseObj, NSError *error) {
//                                                               XLOG(@"2~~~");
//                                                           }];
//
//    [[HttpRequestManager shareHttpRequestManager] postRequestWithCommand:@"opertationsActivity/getDynamicImageList"
//                                                              postParams:requestParams
//                                                        postHeaderParams:requestHeaderParams
//                                                            httpDelegate:self
//                                                           responseblock:^(id<XHttpRequestDelegate> httpRequest, id responseObj, NSError *error) {
//                                                               XLOG(@"3~~~");
//                                                           }];
//
//    [[HttpRequestManager shareHttpRequestManager] postRequestWithCommand:@"opertationsActivity/getDynamicImageList"
//                                                              postParams:requestParams
//                                                        postHeaderParams:requestHeaderParams
//                                                            httpDelegate:self
//                                                           responseblock:^(id<XHttpRequestDelegate> httpRequest, id responseObj, NSError *error) {
//                                                               XLOG(@"4~~~");
//                                                           }];
//
//    __weak typeof(self) weakSelf = self;
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        sleep(0.1f);
//        [[HttpRequestManager shareHttpRequestManager] postRequestWithCommand:@"opertationsActivity/getDynamicImageList"
//                                                                  postParams:requestParams
//                                                            postHeaderParams:requestHeaderParams
//                                                                httpDelegate:weakSelf
//                                                               responseblock:^(id<XHttpRequestDelegate> httpRequest, id responseObj, NSError *error) {
//                                                                   XLOG(@"5~~~");
//                                                               }];
//    });
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark --
#pragma mark XHttpResponseDelegate

- (void) cancelRequest:(id<XHttpRequestDelegate>) request{
    XLOG(@"cancelRequest");
}

- (void) willStartRequest:(id<XHttpRequestDelegate>) request{
    XLOG(@"willStartRequest");
}

- (void) willRetryRequest:(id<XHttpRequestDelegate>) oldRequest
               newRequest:(id<XHttpRequestDelegate>) newRequest{
    XLOG(@"willRetryRequest");
}

- (void) execWithRequest:(id<XHttpRequestDelegate>) request
                progress:(long long) progress
           totalProgress:(long long) totalProgress{
    XLOG(@"execWithRequest");
}

- (void) completeDidRequest:(id<XHttpRequestDelegate>) request
                responseDic:(id) responseDic
                      error:(NSError *) error{
    XLOG(@"completeDidRequest");
}

@end
