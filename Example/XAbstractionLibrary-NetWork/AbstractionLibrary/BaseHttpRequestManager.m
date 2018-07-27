//
//  BaseHttpRequestManager.m
//  XAbstractionLibrary-NetWork_Example
//
//  Created by lanbiao on 2018/7/12.
//  Copyright © 2018年 jiaojiaozhe. All rights reserved.
//

#import "BaseHttpRequestManager.h"

@implementation BaseHttpRequestManager

- (NSString *) getRequestUrlWithCommand:(NSString *) command{
    NSString *requestUrl = [[NSURL URLWithString:command
                                   relativeToURL:[NSURL URLWithString:self.httpHostAddress]] absoluteString];
    return requestUrl;
}

- (NSMutableDictionary *) addDefaultParams:(NSDictionary *) params{
    NSMutableDictionary *defaultParams = NULL;
    if(!params){
        defaultParams = [NSMutableDictionary dictionary];
    }else{
        defaultParams = [NSMutableDictionary dictionaryWithDictionary:params];
    }
    
    DICT_PUT(defaultParams, @"key1", @"value1");
    DICT_PUT(defaultParams, @"key2", @"value2");
    return defaultParams;
}

- (NSMutableDictionary *) addDefaultHeaderParams:(NSDictionary *) headerParams{
    NSMutableDictionary *defaultHeaderParams = NULL;
    if(!headerParams){
        defaultHeaderParams = [NSMutableDictionary dictionary];
    }else{
        defaultHeaderParams = [NSMutableDictionary dictionaryWithDictionary:headerParams];
    }
    
    DICT_PUT(defaultHeaderParams, @"headerKey1", @"headerValue1");
    DICT_PUT(defaultHeaderParams, @"headerKey2", @"headerValue2");
    return defaultHeaderParams;
}

- (id<XHttpRequestDelegate>) getRequestWithCommand:(NSString *)command
                                     requestParams:(NSDictionary *)requestParams
                                      httpDelegate:(id<XHttpResponseDelegate>)delegate
                                     responseblock:(XResponseBlock)responseblock{
    return [self getRequestWithCommand:command
                         requestParams:requestParams
                   requestHeaderParams:NULL
                          httpDelegate:delegate
                         responseblock:responseblock];
}

- (id<XHttpRequestDelegate>) getRequestWithCommand:(NSString *)command
                                     requestParams:(NSDictionary *)requestParams
                               requestHeaderParams:(NSDictionary *)requestHeaderParams
                                      httpDelegate:(id<XHttpResponseDelegate>)delegate
                                     responseblock:(XResponseBlock)responseblock{
    NSMutableDictionary *paramsDic = [NSMutableDictionary dictionaryWithDictionary:requestParams];
    NSString *urlString = [self getRequestUrlWithCommand:command];
    
    return [self getRequestWithUrlString:urlString
                           requestParams:[self addDefaultParams:paramsDic]
                     requestHeaderParams:[self addDefaultHeaderParams:requestHeaderParams]
                            httpDelegate:delegate
                           responseblock:responseblock];
}

- (id<XHttpRequestDelegate>) postRequestWithCommand:(NSString *)command
                                         postParams:(NSDictionary *)postParams
                                       httpDelegate:(id<XHttpResponseDelegate>)delegate
                                      responseblock:(XResponseBlock)responseblock{
    return [self postRequestWithCommand:command
                             postParams:postParams
                       postHeaderParams:NULL
                           httpDelegate:delegate
                          responseblock:responseblock];
}

- (id<XHttpRequestDelegate>) postRequestWithCommand:(NSString *)command
                                         postParams:(NSDictionary *)postParams
                                   postHeaderParams:(NSDictionary *)postHeaderParams
                                       httpDelegate:(id<XHttpResponseDelegate>)delegate
                                      responseblock:(XResponseBlock)responseblock{
    NSMutableDictionary *paramsDic = [NSMutableDictionary dictionaryWithDictionary:postParams];
    NSString *urlString = [self getRequestUrlWithCommand:command];
    
    return [self postRequestWithUrlString:urlString
                               postParams:[self addDefaultParams:paramsDic]
                         postHeaderParams:[self addDefaultHeaderParams:postHeaderParams]
                             httpDelegate:delegate
                            responseblock:responseblock];
}
@end
