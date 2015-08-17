//
//  TwoViewController.m
//  PresentAnimation
//
//  Created by chenzhen on 15/8/17.
//  Copyright (c) 2015年 站在巨人肩膀. All rights reserved.
//

#import "TwoViewController.h"

@implementation TwoViewController
-(void)viewDidLoad{
    self.view.backgroundColor = [UIColor redColor];
    
    UIButton *sender = [[UIButton alloc]initWithFrame:CGRectMake(200, 200, 100, 100)];
    sender.backgroundColor = [UIColor orangeColor];
    [sender addTarget:self action:@selector(onclick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sender];

}

-(void)onclick{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
