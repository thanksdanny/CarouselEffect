//
//  InterestCollectionViewCell.m
//  CarouselEffect
//
//  Created by Danny Ho on 3/1/16.
//  Copyright © 2016 thanksdanny. All rights reserved.
//

#import "InterestCollectionViewCell.h"

@interface InterestCollectionViewCell ()

@end

@implementation InterestCollectionViewCell

- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.layer.cornerRadius = 5.0;
    self.clipsToBounds = YES;
}

@end
