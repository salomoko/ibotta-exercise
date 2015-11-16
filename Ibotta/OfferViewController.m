//
//  OfferViewController.m
//  Ibotta
//
//  Created by Salomon Valverde on 11/13/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import "OfferViewController.h"
#import "UIImageView+AFNetworking.h"

@implementation OfferViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.nameLbl setText:self.offer.name];
    [self.iconImgView setImageWithURL:[NSURL URLWithString:self.offer.iconURL]];
    
    [self.likesLbl setText:[[self.offer totalLikes] stringValue]];
    [self.descLbl setText:self.offer.desc];
    [self.descLbl sizeToFit];
    
    NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
    [numberFormatter setNumberStyle: NSNumberFormatterCurrencyStyle];
    NSString *currencyAmount = [numberFormatter stringFromNumber:[self.offer amount]];
    [self.amountLbl setText:currencyAmount];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"navbar-logo"]];
    self.navigationItem.titleView = imageView;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
