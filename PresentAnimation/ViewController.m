//
//  ViewController.m
//  PresentAnimation
//
//  Created by chenzhen on 15/8/17.
//  Copyright (c) 2015年 站在巨人肩膀. All rights reserved.
//

#import "ViewController.h"
#import "TwoViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *sender = [[UIButton alloc]initWithFrame:CGRectMake(200, 200, 100, 100)];
    sender.backgroundColor = [UIColor orangeColor];
    [sender addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sender];
}

-(void)onclick{
    TwoViewController *two = [[TwoViewController alloc]init];
    two.transitioningDelegate = self;
    [self presentViewController:two animated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
