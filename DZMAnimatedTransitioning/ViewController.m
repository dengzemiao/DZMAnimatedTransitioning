//
//  ViewController.m
//  DZMAnimatedTransitioning
//
//  Created by 邓泽淼 on 2017/12/20.
//  Copyright © 2017年 邓泽淼. All rights reserved.
//

#import "ViewController.h"
#import "TempViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"书籍阅读转场动画";
    
    /*
     
     使用简介:
     
     1.通过继承 DZMATViewController 来使用控制器。
     
     2.通过  [self.navigationController pushATViewController:vc animated:true]; 来执行动画
     
     以上两点其实就是为了设置 self.navigationController.delegate = 目标控制器;
     
     
     执行动画的对象简介:
     
     基于 NSObject 扩展了 ATTarget 属性。(不用考虑图层层级问题, 无论多深的嵌套子视图都可以指定)
     
     ATTarget 简介:
     
     比如 VC1 跳转 VC2, 你想要 VC1 中的哪个视图带有转场动画就指定它(例子: VC1.ATTarget = 执行动画视图),这个对象可以中途随意修改指定。
     
     在返回操作中, 返回的转场动画也是通过它进行定位回到 VC1 中。
     */
    
}

- (IBAction)openBook:(UIButton *)sender {
    
    self.ATTarget = sender;
    
    TempViewController *vc = [[TempViewController alloc] init];
    
    [self.navigationController pushATViewController:vc animated:true];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}


@end
