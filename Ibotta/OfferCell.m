//
//  OfferCell.m
//  Ibotta
//
//  Created by Salomon Valverde on 11/13/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import "OfferCell.h"
#import "UIImageView+AFNetworking.h"

@implementation OfferCell

- (void)prepareForReuse {
    
    [self.iconImgView cancelImageRequestOperation];
    self.iconImgView.image = nil;
}


@end
