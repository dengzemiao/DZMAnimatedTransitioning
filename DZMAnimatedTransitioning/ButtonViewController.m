//
//  ButtonViewController.m
//  DZMAnimatedTransitioning
//
//  Created by dengzemiao on 2019/1/22.
//  Copyright © 2019年 邓泽淼. All rights reserved.
//

#import "ButtonViewController.h"
#import "ReadViewController.h"

@interface ButtonViewController ()

@property (nonatomic, strong) UIButton *button;
    
@end

@implementation ButtonViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"按钮使用";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.backgroundColor = [UIColor redColor];
    [self.button setTitle:@"小说名" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(clickButton:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    self.button.frame = CGRectMake(100, 100, 100, 150);
}

- (void)clickButton:(UIButton *)button {
    
    self.ATTarget = button;
    
    ReadViewController *vc = [[ReadViewController alloc] init];
    
    [self.navigationController pushATViewController:vc animated:true];
}

@end
