//
//  CZYProtocolManager.h
//  CZYProtocolManager
//
//  Created by 陈振洋 on 17/2/6.
//  Copyright © 2017年 czy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CZYProtocolManager : NSObject

+ (void)registSourceProvide:(id)provide forProtocol:(Protocol *)protocol;

+ (id)sourceProvideForProtocol:(Protocol *)protocol;

@end
