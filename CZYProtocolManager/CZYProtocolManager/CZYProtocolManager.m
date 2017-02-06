//
//  CZYProtocolManager.m
//  CZYProtocolManager
//
//  Created by 陈振洋 on 17/2/6.
//  Copyright © 2017年 czy. All rights reserved.
//

#import "CZYProtocolManager.h"

@interface CZYProtocolManager ()

@property (nonatomic,strong)NSMutableDictionary *sourceProvides;

@end
@implementation CZYProtocolManager


+ (CZYProtocolManager *)shareInatance {

    static CZYProtocolManager *instance;
    static dispatch_once_t   onceToken;
    
    dispatch_once(&onceToken, ^{
    
        instance = [[self alloc] init];
    
    });
    
    return instance;
}

- (id)init {

    self = [super  init];
    
    if (self) {
      
        _sourceProvides = [[NSMutableDictionary alloc] initWithCapacity:10];
    }
    
    return self;

}


+ (void)registSourceProvide:(id)provide forProtocol:(Protocol *)protocol {

    if (provide == nil || protocol == nil) {
        
        return;
    }
    
    [[self shareInatance].sourceProvides setObject:provide forKey:NSStringFromProtocol(protocol)];

}

+ (id)sourceProvideForProtocol:(Protocol *)protocol {

    
    return [[self shareInatance].sourceProvides objectForKey:NSStringFromProtocol(protocol)];


}

@end
