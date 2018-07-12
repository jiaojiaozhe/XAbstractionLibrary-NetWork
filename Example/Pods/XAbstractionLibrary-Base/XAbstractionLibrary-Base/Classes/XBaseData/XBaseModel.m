//
//  XBaseData.m
//  Pods-XAbstractionLibrary-Base_Example
//
//  Created by lanbiao on 2018/7/26.
//

#import "XBaseModel.h"
#import "XMD5Digest.h"
#import "XDeviceInfo.h"

@implementation XBaseModel
+ (NSString *) uuid
{
    NSString *ID = nil;
    static NSUInteger index = 0;
    static NSString *clientID = nil;
    
    @synchronized(XBaseModel.class)
    {
        if(clientID.length <= 0){
            clientID = [XDeviceInfo getDeviceIDFA];
        }
        NSTimeInterval interval = [[NSDate date] timeIntervalSince1970];
        NSString *uuid = [NSString stringWithFormat:@"XID_%@_%lf_%lu",clientID,interval,(unsigned long)++index];
        ID = [XMD5Digest md5:uuid];
    }
    return ID;
}

//具有一定的设计能力，具备较强的业务开发能力，沟通无障碍，中高级水平，通过。
- (instancetype) init
{
    if(self = [super init]){
        _ID = [XBaseModel uuid];
    }
    return self;
}

- (BOOL) validateID
{
    if(_ID.length <= 0)
        return NO;
    else
        return YES;
}

#pragma mark --
#pragma mark --预埋处理
+ (BOOL) validity
{
    return YES;
}

#pragma mark --
#pragma mark --NSCopying
- (id)copyWithZone:(NSZone *)zone
{
    XBaseModel *newBaseModel = [[[self class] allocWithZone:zone] init];
    newBaseModel.ID = [self.ID copy];
    return newBaseModel;
}

#pragma mark --
#pragma mark --NSCoding
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    if([self validateID])
        [aCoder encodeObject:_ID forKey:@"ID"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    if(self = [super init])
    {
        if([aDecoder containsValueForKey:@"ID"])
            _ID = [aDecoder decodeObjectForKey:@"ID"];
    }
    return self;
}
@end
