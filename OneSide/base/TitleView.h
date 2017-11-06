//
//  TitleView.h
//  OneSide
//
//  Created by pingfu on 2017/11/2.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TitleView : UIView
@property (strong, nonatomic) UIButton *mIvLeft;
@property (strong, nonatomic) UITextView *mTvTitle;
@property (strong, nonatomic) UITextView *mTvRight;

/*
 * 初始化View
 */
-(void) initView:(int)screenWidth;

/**
 * 设置title
 *
 * @param title   标题
 * @param hasBack 是否有返回按钮
 */
-(void) setTitle:(NSString *)title hasBack: (BOOL) hasBack;

/**
 * 设置title
 *
 * @param title      标题
 * @param rightTitle 右标题
 */
-(void) setTitle:(NSString *)title rightTitle: (NSString *) rightTitle;

/*
 * 设置title
 */
-(void) setTitle:(NSString *)title hasBack:(BOOL) hasBack rightTitle: (NSString *) rightTitle;

-(void) tempFunc:(int)a param2:(int)b;
@end
