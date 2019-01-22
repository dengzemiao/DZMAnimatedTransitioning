//
//  CollectionViewCell.m
//  DZMAnimatedTransitioning
//
//  Created by dengzemiao on 2019/1/22.
//  Copyright © 2019年 邓泽淼. All rights reserved.
//

#import "CollectionViewCell.h"

@implementation CollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor redColor];
        
        self.button = [UIButton buttonWithType:UIButtonTypeCustom];
        self.button.userInteractionEnabled = NO;
        self.button.backgroundColor = [UIColor clearColor];
        [self.button setTitle:@"小说名" forState:UIControlStateNormal];
        [self.contentView addSubview:self.button];
    }
    
    return self;
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.button.frame = self.bounds;
}

@end
