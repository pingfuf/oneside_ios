//
//  BaseViewController.h
//  OneSide
//
//  Created by pingfu on 2017/11/2.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TitleView.h"

@interface BaseViewController : UIViewController

@property (nonatomic, nonatomic) int screenWidth;
@property (nonatomic, nonatomic) int screenHeight;

//标题栏
@property (nonatomic, strong) TitleView *titleView;

-(void) setTitle:(NSString*) title hasBack:(BOOL) hasBack;
-(void) onBackPressed;
@end
