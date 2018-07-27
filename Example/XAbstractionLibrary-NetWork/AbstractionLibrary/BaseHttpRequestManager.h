//
//  BaseHttpRequestManager.h
//  XAbstractionLibrary-NetWork_Example
//
//  Created by lanbiao on 2018/7/12.
//  Copyright © 2018年 jiaojiaozhe. All rights reserved.
//

#import "XAbstractionLibrary-NetWork-umbrella.h"

/**
 基础http请求管理器
 */
@interface BaseHttpRequestManager : XHttpRequestManager
/**
 *  接口请求主机地址
 */
@property (nonatomic,strong) NSString *httpHostAddress;

/**
 *  get请求
 *
 *  @param command              接口请求名
 *  @param requestParams        接口请求参数集合
 *  @param delegate             接口请求回调代理
 *  @param responseblock        接口请求结果回调block
 *
 *  @return 请求对象
 */
- (id<XHttpRequestDelegate>) getRequestWithCommand:(NSString *) command
                                       requestParams:(NSDictionary *) requestParams
                                        httpDelegate:(id<XHttpResponseDelegate>) delegate
                                       responseblock:(XResponseBlock) responseblock;


/**
 *  get请求,公共参数放在header中
 *
 *  @param command              接口请求名
 *  @param requestParams        接口请求私有参数集合
 *  @param requestHeaderParams  接口共有参数集合
 *  @param delegate             接口请求回调代理
 *  @param responseblock        接口请求结果回调block
 *
 *  @return 请求对象
 */
- (id<XHttpRequestDelegate>) getRequestWithCommand:(NSString *) command
                                     requestParams:(NSDictionary *) requestParams
                               requestHeaderParams:(NSDictionary *) requestHeaderParams
                                      httpDelegate:(id<XHttpResponseDelegate>) delegate
                                     responseblock:(XResponseBlock) responseblock;

/**
 *  post请求
 *
 *  @param command          接口请求名
 *  @param postParams       接口请求参数集合
 *  @param delegate         接口请求代理
 *  @param responseblock    接口请求业务回调
 *
 *  @return 请求对象
 */
- (id<XHttpRequestDelegate>) postRequestWithCommand:(NSString *) command
                                         postParams:(NSDictionary *) postParams
                                       httpDelegate:(id<XHttpResponseDelegate>) delegate
                                      responseblock:(XResponseBlock) responseblock;

/**
 *  post请求，公共参数放在header中
 *
 *  @param command                  接口请求名
 *  @param postParams               接口请求参数集合
 *  @param postHeaderParams         接口请求header集合
 *  @param delegate                 接口请求代理
 *  @param responseblock            接口请求业务回调
 *
 *  @return 请求对象
 */
- (id<XHttpRequestDelegate>) postRequestWithCommand:(NSString *) command
                                         postParams:(NSDictionary *) postParams
                                   postHeaderParams:(NSDictionary *) postHeaderParams
                                       httpDelegate:(id<XHttpResponseDelegate>) delegate
                                      responseblock:(XResponseBlock) responseblock;

@end
