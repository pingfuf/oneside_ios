//
//  BaseViewController.m
//  OneSide
//
//  Created by pingfu on 2017/11/2.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import "BaseViewController.h"
#import "TitleView.h"
@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view setBackgroundColor:[UIColor whiteColor]];
    _titleView = [[TitleView alloc] init];
    int width = [UIScreen mainScreen].bounds.size.width;
    CGRect rectOfStatusbar = [[UIApplication sharedApplication] statusBarFrame];
    int height = rectOfStatusbar.size.height;
    [_titleView setFrame:CGRectMake(0, height, width, 40)];
    [_titleView setBackgroundColor:[UIColor blueColor]];
    [_titleView initView:300];
    [_titleView.mIvLeft addTarget:self action:@selector(onBackPressed) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_titleView];
}

- (void) setTitle:(NSString *)title hasBack:(BOOL)hasBack {
    [_titleView setTitle:title hasBack:hasBack];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)onBackPressed{
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
