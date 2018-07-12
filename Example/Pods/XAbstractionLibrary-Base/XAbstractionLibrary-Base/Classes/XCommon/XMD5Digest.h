//
//  XMD5Digest.h
//  XAbstractionLibrary
//
//  Created by lanbiao on 15/7/13.
//  Copyright (c) 2015年 lanbiao. All rights reserved.
//

#import "XBaseModel.h"

@interface XMD5Digest : XBaseModel

/**
 *  对字符串取md5值
 *
 *  @param digest 被取md5的字符串
 *
 *  @return md5值返回
 */
+ (NSString *) md5:(NSString *) digest;

@end
