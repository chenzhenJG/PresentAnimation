//
//  MySingleton.h
//  PresentAnimation
//
//  Created by chenzhen on 15/8/17.
//  Copyright (c) 2015年 站在巨人肩膀. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CZPresentAnimation.h"
#import "CZDissmissAnimation.h"
@interface MySingleton : NSObject
+(CZPresentAnimation *)getSingletonCZAimation;
+(CZDissmissAnimation *)getSingletonCZDissmiss;
@end
