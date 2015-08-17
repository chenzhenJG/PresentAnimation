//
//  BaseController.m
//  PresentAnimation
//
//  Created by chenzhen on 15/8/17.
//  Copyright (c) 2015年 站在巨人肩膀. All rights reserved.
//

#import "BaseController.h"
#import "CZPresentAnimation.h"
#import "CZDissmissAnimation.h"
#import "MySingleton.h"
@interface BaseController()
@property (nonatomic ,strong) CZPresentAnimation *presentAnimation;
@property (nonatomic ,strong) CZDissmissAnimation *dissmissAnimation;
@end

@implementation BaseController
-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}

-(void)viewDidLoad{
    _presentAnimation = [MySingleton getSingletonCZAimation];
    _dissmissAnimation = [MySingleton getSingletonCZDissmiss];
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source{
    return self.presentAnimation;
}

-(id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed{
    return self.dissmissAnimation;
}
@end
