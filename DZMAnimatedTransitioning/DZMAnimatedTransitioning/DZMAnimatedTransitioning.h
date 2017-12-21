//
//  DZMAnimatedTransitioning.h
//  DZMAnimatedTransitioning
//
//  Created by 邓泽淼 on 2017/12/20.
//  Copyright © 2017年 邓泽淼. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DZMAnimatedTransitioning : NSObject<UIViewControllerAnimatedTransitioning>

/// 动画时间 默认: 1.0
@property (nonatomic, assign) float duration;

/// 目标视图 有值: 则作为转场封面 无值: 则使用主控制器作为转场封面
@property (nonatomic, weak, nullable) UIView *target;

/// 构造方法
- (instancetype _Nullable)initWithOperation:(UINavigationControllerOperation)operation;

/// 构造方法
- (instancetype _Nullable)initWithOperation:(UINavigationControllerOperation)operation target:(nullable UIView *)target;

@end
