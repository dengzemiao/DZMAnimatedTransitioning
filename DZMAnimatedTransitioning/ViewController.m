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
