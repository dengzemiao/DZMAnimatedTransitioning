//
//  UIViewController+DZM.m
//  DZMAnimatedTransitioning
//
//  Created by 邓泽淼 on 2017/12/22.
//  Copyright © 2017年 邓泽淼. All rights reserved.
//

#import "UIViewController+DZM.h"
#import <objc/runtime.h>

@implementation UIViewController (DZM)

- (void)setATTarget:(UIView *)ATTarget {
    
    objc_setAssociatedObject(self, @selector(ATTarget), ATTarget, OBJC_ASSOCIATION_ASSIGN);
}

- (UIView *)ATTarget {
    
    return objc_getAssociatedObject(self, _cmd);
}

@end
