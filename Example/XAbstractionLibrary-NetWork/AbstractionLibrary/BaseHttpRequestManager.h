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

@end
