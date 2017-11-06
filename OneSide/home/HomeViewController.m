//
//  HomeViewController.m
//  OneSide
//
//  Created by pingfu on 2017/11/3.
//  Copyright © 2017年 pingfu. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTitle:@"home" hasBack:YES];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"temp" forState:UIControlStateNormal];
    [button setFrame:CGRectMake(100, 100, 100, 40)];
    [button setBackgroundColor:[UIColor blueColor]];
    [button addTarget:self action:@selector(gotoTemp) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)gotoTemp {
    NSLog(@"goto temp");
    TempViewController *controller = [[TempViewController alloc] init];
    controller.delegate = self;
    [self.navigationController pushViewController:controller animated:YES];
}

-(void) onBackPressedEvent:(NSString *)event{
    NSLog(@"back event = %@", event);
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
