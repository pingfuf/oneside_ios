//
//  TempProtocol.h
//  OneSide
//
//  Created by pingfu on 2017/11/5.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TempProtocol <NSObject>

@required
-(void) onBackPressedEvent:(NSString *)event;
@end
