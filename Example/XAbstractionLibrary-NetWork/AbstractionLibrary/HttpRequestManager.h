//
//  HttpRequestManager.h
//  XAbstractionLibrary-NetWork_Example
//
//  Created by lanbiao on 2018/7/24.
//  Copyright © 2018年 jiaojiaozhe. All rights reserved.
//

#import "BaseHttpRequestManager.h"

/**
 *  http请求管理器
 */
@interface HttpRequestManager : BaseHttpRequestManager

/**
 *  获取http管理器单例
 */
+ (instancetype) shareHttpRequestManager;
@end
