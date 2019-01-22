//
//  CollectionViewController.m
//  DZMAnimatedTransitioning
//
//  Created by dengzemiao on 2019/1/22.
//  Copyright © 2019年 邓泽淼. All rights reserved.
//

#import "CollectionViewController.h"
#import "CollectionViewCell.h"
#import "ReadViewController.h"

@interface CollectionViewController () <UICollectionViewDelegate,UICollectionViewDataSource>

@property (nonatomic, strong) UICollectionView *collectionView;

@end

@implementation CollectionViewController

static NSString * const reuseIdentifier = @"DZM_Collection_Cell";

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
    layout.scrollDirection = UICollectionViewScrollDirectionVertical;
    layout.itemSize = CGSizeMake(100, 150);
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.bounds collectionViewLayout:layout];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.collectionView];
    [self.collectionView registerClass:[CollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
}

#pragma mark <UICollectionViewDataSource>

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CollectionViewCell *cell = (CollectionViewCell *)[collectionView cellForItemAtIndexPath:indexPath];
    
    self.ATTarget = cell;
    
    ReadViewController *vc = [[ReadViewController alloc] init];
    
    [self.navigationController pushATViewController:vc animated:true];
}

@end
