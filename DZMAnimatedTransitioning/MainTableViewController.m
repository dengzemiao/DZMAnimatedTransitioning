//
//  MainTableViewController.m
//  DZMAnimatedTransitioning
//
//  Created by dengzemiao on 2019/1/22.
//  Copyright © 2019年 邓泽淼. All rights reserved.
//

#import "MainTableViewController.h"
#import "ButtonViewController.h"
#import "CollectionViewController.h"

@interface MainTableViewController ()

@property (nonatomic, strong) NSArray *dataArray;
    
@end

@implementation MainTableViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"MainTableViewController";
    
    self.dataArray = @[@"按钮使用",@"CollectionView使用"];
    
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
     
     注意: ATTarget 如果没有值 默认会使用 VC1.view 作为动画目标使用
     */
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.dataArray.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DZM_Main_Cell"];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"DZM_Main_Cell"];
    }
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    return cell;
}
    
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.row == 0) {
        
        ButtonViewController *vc = [[ButtonViewController alloc] init];
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }else{
        
        CollectionViewController *vc = [[CollectionViewController alloc] init];
        
        [self.navigationController pushViewController:vc animated:YES];
    }
}

@end
