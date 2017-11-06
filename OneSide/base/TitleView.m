//
//  TitleView.m
//  OneSide
//
//  Created by pingfu on 2017/11/2.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import "TitleView.h"

@implementation TitleView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
-(void) initView: (int)screenWidth{
    NSLog(@"screenWidth = %d", screenWidth);
    _mIvLeft = [UIButton buttonWithType:UIButtonTypeCustom];
    [_mIvLeft setImage:[UIImage imageNamed:@"ic_back_black"] forState:UIControlStateNormal];
    [_mIvLeft setFrame:CGRectMake(15, 10, 22, 20)];
    [_mIvLeft setUserInteractionEnabled:YES];
    [self addSubview:_mIvLeft];
    
    _mTvTitle = [[UITextView alloc] init];
    [_mTvTitle setBackgroundColor:[UIColor greenColor]];
    [_mTvTitle setFont:[UIFont boldSystemFontOfSize:17]];
    [_mTvTitle setFrame:CGRectMake((screenWidth / 2) - 50, 0, 100, 40)];
    [self addSubview:_mTvTitle];
    
    _mTvRight = [[UITextView alloc]init];
    [_mTvRight setBackgroundColor:[UIColor redColor]];
    [_mTvRight setFrame:CGRectMake(screenWidth - 80, 0, 80, 40)];
    [_mTvRight setFont:[UIFont boldSystemFontOfSize:17]];
    [self addSubview:_mTvRight];
}

/**
 * @method 获取指定宽度width的字符串在UITextView上的高度
 * @param textView 待计算的UITextView
 * @param width 限制字符串显示区域的宽度
 * @result float 返回的高度
 */
- (float) heightForString:(UITextView *)textView andWidth:(float)width{
    CGSize sizeToFit = [textView sizeThatFits:CGSizeMake(width, MAXFLOAT)];
    return sizeToFit.height;
}

-(void) setTitle:(NSString *)title hasBack:(BOOL)hasBack {
    [self setTitle:title hasBack:hasBack rightTitle:@""];
}

-(void) setTitle:(NSString *)title rightTitle:(NSString *)rightTitle {
    [self setTitle:title hasBack:YES rightTitle:rightTitle];
}

-(void) setTitle:(NSString *)title hasBack:(BOOL)hasBack rightTitle:(NSString *)rightTitle {
    [_mTvTitle setText:title];
    [_mTvRight setText:rightTitle];
    [_mIvLeft setHidden: hasBack ? NO : YES];
}

@end
