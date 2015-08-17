//
//  CZDissmissAnimation.m
//  PresentAnimation
//
//  Created by chenzhen on 15/8/17.
//  Copyright (c) 2015年 站在巨人肩膀. All rights reserved.
//

#import "CZDissmissAnimation.h"

@implementation CZDissmissAnimation
- (NSTimeInterval)transitionDuration:(id <UIViewControllerContextTransitioning>)transitionContext
{
    return 0.8f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext
{
    // 1. 获取要跳转的controller
    UIViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    // 2. 设置跳转过来controller坐标
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    CGRect finalFrame = [transitionContext finalFrameForViewController:toVC];
    toVC.view.frame = CGRectMake(-finalFrame.size.width, 0, finalFrame.size.width, screenBounds.size.height);
    // 3. 添加
    UIView *containerView = [transitionContext containerView];
    [containerView addSubview:toVC.view];
    
    // 4. 执行动画
    [UIView animateWithDuration:0.3 delay:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        toVC.view.frame = finalFrame;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}
@end
