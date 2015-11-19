//
//  RetailerCell.m
//  Ibotta
//
//  Created by Salomon Valverde on 11/11/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import "RetailerCell.h"
#import "UIImageView+AFNetworking.h"

@implementation RetailerCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)prepareForReuse {
    
    [self.iconImgView cancelImageRequestOperation];
    self.iconImgView.image = nil;
}

@end
