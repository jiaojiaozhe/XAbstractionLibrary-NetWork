//
//  HttpRequestManager.m
//  XAbstractionLibrary-NetWork_Example
//
//  Created by lanbiao on 2018/7/24.
//  Copyright © 2018年 jiaojiaozhe. All rights reserved.
//

#import "HttpRequestManager.h"

@implementation HttpRequestManager

#pragma mark --单例模式
+ (instancetype) shareHttpRequestManager{
    static HttpRequestManager *requestManager = nil;
#if !__has_feature(objc_arc)
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        requestManager = [NSAllocateObject([self class], 0, nil) init];
    });
#else
    //    requestManager = [[[self class] alloc] init];
    requestManager = [[self class] alloc];
#endif
    return requestManager;
}

+ (id) allocWithZone:(struct _NSZone *)zone{
#if !__has_feature(objc_arc)
    return [[self shareHttpRequestManager] retain];
#else
    static HttpRequestManager *requestManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        requestManager = [[super allocWithZone:zone] init];
    });
    return requestManager;
#endif
}

#if !__has_feature(objc_arc)
- (id) retain{
    return self;
}

- (NSUInteger) retainCount{
    return NSUIntegerMax;
}

- (id) autorelease{
    return self;
}

- (oneway void) release{
    
}
#endif

- (id) copyWithZone:(NSZone *)zone{
    return self;
}

- (instancetype) init{
    if(self = [super init]){
        self.httpHostAddress = @"http://tobcs.app.aipark.com/api/v1/encrypt/";
    }
    return self;
}

- (ResponseSerializerType) getResponseSerializerType{
    return ResponseSerializerTypeHTTP;
}

@end
