//
//  ReadViewController.m
//  DZMAnimatedTransitioning
//
//  Created by 邓泽淼 on 2017/12/21.
//  Copyright © 2017年 邓泽淼. All rights reserved.
//

#import "ReadViewController.h"

@interface ReadViewController ()

@end

@implementation ReadViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor greenColor];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    UIViewController *vc = [[UIViewController alloc] init];
    
    vc.view.backgroundColor = UIColor.whiteColor;
    
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}
@end
