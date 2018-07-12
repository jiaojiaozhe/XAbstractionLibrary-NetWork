//
//  XHttpRequest.h
//  AFNetworking
//
//  Created by lanbiao on 2018/7/12.
//

#import "XHttpRequestDelegate.h"
//#import <XAbstractionLibrary_Base/XAbstractionLibrary-Base-umbrella.h>

/**
 *  短连接http请求对象
 */
@interface XHttpRequest : NSObject<XHttpRequestDelegate>

/**
 *  请求命令名
 */
@property (nonatomic,strong) NSString *command;

/**
 *  如果请求失败，请求的重试次数
 */
@property (nonatomic,assign) NSUInteger retryCount;

/**
 *  请求状态的回调
 */
@property (nonatomic,weak) id<XHttpResponseDelegate> ownerDelegate;

/**
 *  构造请求对象，用于管理请求
 */
- (instancetype) initWithRequestTask:(id) request;

/**
 *  取消请求
 */
- (void) cancel;

/**
 *  重试请求
 *
 *  @return nil 不能重试 否则返回一个新请求对象
 */
- (instancetype) retry;

/**
 *  删除依赖于该接口的代理
 */
- (void) removeDelegate:(id<XHttpResponseDelegate>) delegate;

/**
 *  添加依赖于该接口的代理
 */
- (void) addDelegate:(id<XHttpResponseDelegate>) delegate;

/**
 *  即将开始准备请求
 *
 *  @param request 请求对象
 */
- (void) willStartRequest:(id<XHttpRequestDelegate>) request;

/**
 *  请求重试
 *
 *  @param oldRequest   旧的请求对象
 *  @param newRequest   新的请求对象
 */
- (void) willRetryRequest:(id<XHttpRequestDelegate>) oldRequest
               newRequest:(id<XHttpRequestDelegate>) newRequest;

/**
 *  请求进度回调
 *
 *  @param request 请求对象
 *  @param progress 请求进度
 *  @param totalProgress    总的进度
 */
- (void) execWithRequest:(id<XHttpRequestDelegate>) request
                progress:(long long) progress
           totalProgress:(long long) totalProgress;

/**
 *  请求完成
 *
 *  @param  request 请求对象
 *  @param  responseDic 请求结果
 *  @param  error   请求错误，如果有的话，否则nil
 */
- (void) completeDidRequest:(id<XHttpRequestDelegate>) request
                responseDic:(id) responseDic
                      error:(NSError *) error;

@end
