//
//  DZMATViewController.h
//  DZMAnimatedTransitioning
//
//  Created by 邓泽淼 on 2017/12/20.
//  Copyright © 2017年 邓泽淼. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DZMAnimatedTransitioning.h"
#import "UINavigationController+DZM.h"

@interface DZMATViewController : UIViewController<UINavigationControllerDelegate>

/// 目标视图 有值: 则作为转场封面 无值: 则使用主控制器作为转场封面
@property (nonatomic, weak, nullable) UIView *target;

@end
