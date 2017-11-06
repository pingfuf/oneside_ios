//
//  RCTRootView+Util.m
//  OneSide
//
//  Created by pingfu on 2017/11/6.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import "RCTRootView+Util.h"

@implementation RCTRootView (Util)

- (NSURL *) getBundleServerUrl {
    NSURL *url = [NSURL URLWithString:@"http://172.16.96.217:8081/index.ios.bundle?platform=ios"];
    
    return url;
}
@end
