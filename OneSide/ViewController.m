//
//  ViewController.m
//  OneSide
//
//  Created by pingfu on 2017/11/2.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import "ViewController.h"
#import "HomeViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setTitle:@"splash" hasBack:YES];
    
    UIButton *button = [[UIButton alloc] init];
    [button setFrame:CGRectMake(100, 100, 100, 100)];
    [button setBackgroundColor:[UIColor yellowColor]];
    [button addTarget:self action:@selector(gotoHome) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

-(void) gotoHome{
    HomeViewController *controller = [[HomeViewController alloc] init];
    [self.navigationController pushViewController:controller animated:YES];
}

-(void) onBackPressed{
    AppDelegate *app = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow *window = app.window;
    
    [UIView animateWithDuration:0.3f animations:^{
        window.alpha = 0;
        window.frame = CGRectMake(0, window.bounds.size.width, 0, 0);
    } completion:^(BOOL finished) {
        exit(0);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
