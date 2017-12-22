//
//  NSObject+DZM.h
//  DZMAnimatedTransitioning
//
//  Created by 邓泽淼 on 2017/12/22.
//  Copyright © 2017年 邓泽淼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSObject (DZM)

/**
 简介:
 比如 VC1 跳转 VC2, 你想要 VC1 中的哪个视图带有转场动画就指定它,这个对象可以中途随意修改指定。
 在返回操作中, 返回的转场动画也是通过它进行定位回到 VC1 中。
 */
@property (nonatomic, weak, nullable) UIView *ATTarget;

@end
