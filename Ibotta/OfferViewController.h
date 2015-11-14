//
//  OfferViewController.h
//  Ibotta
//
//  Created by Salomon Valverde on 11/13/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Offer.h"

@interface OfferViewController : UIViewController


@property (strong,nonatomic) Offer *offer;
@property (weak, nonatomic) IBOutlet UILabel *nameLbl;
@property (weak, nonatomic) IBOutlet UIImageView *iconImgView;
@property (weak, nonatomic) IBOutlet UILabel *likesLbl;
@property (weak, nonatomic) IBOutlet UILabel *descLbl;

@end
