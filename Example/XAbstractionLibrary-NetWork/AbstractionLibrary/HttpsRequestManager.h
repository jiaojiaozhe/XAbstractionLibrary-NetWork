//
//  HttpsRequestManager.h
//  XAbstractionLibrary-NetWork_Example
//
//  Created by lanbiao on 2018/7/24.
//  Copyright © 2018年 jiaojiaozhe. All rights reserved.
//

#import "BaseHttpRequestManager.h"

/**
 *  https请求管理器
 */
@interface HttpsRequestManager : BaseHttpRequestManager

/**
 *  获取https单例请求管理器
 */
+ (instancetype) shareHttpsRequestManager;

@end
