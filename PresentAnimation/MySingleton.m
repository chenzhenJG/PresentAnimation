//
//  MySingleton.m
//  PresentAnimation
//
//  Created by chenzhen on 15/8/17.
//  Copyright (c) 2015年 站在巨人肩膀. All rights reserved.
//

#import "MySingleton.h"

@implementation MySingleton
+(CZPresentAnimation *)getSingletonCZAimation{
    static CZPresentAnimation *_czPresentAnimation = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _czPresentAnimation = [CZPresentAnimation new];
    });
    return _czPresentAnimation;
}
+(CZDissmissAnimation *)getSingletonCZDissmiss{
    static CZDissmissAnimation *_czDissmissAnimation = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _czDissmissAnimation = [CZDissmissAnimation new];
    });
    return _czDissmissAnimation;
}
@end
