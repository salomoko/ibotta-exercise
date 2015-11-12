//
//  ViewController.m
//  Ibotta
//
//  Created by Salomon Valverde on 11/9/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import "RetailersViewController.h"
#import "IbottaAPI.h"
#import "SVProgressHUD.h"
#import "UIColor+Ibotta.h"
#import "Retailer.h"

@interface RetailersViewController ()

@end

@implementation RetailersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [SVProgressHUD setForegroundColor:[UIColor colorWithIbottaPink]];
    [SVProgressHUD setBackgroundColor:[UIColor colorWithIbottaBiege]];
    [SVProgressHUD showWithStatus:@"Loading..."];
    [[IbottaAPI sharedInstance] retrieveRetailersWith:^(id data, NSError *error) {
        if (data != nil) {
            
            NSArray *retailers = [data objectForKey:@"retailers"];
            if (retailers.count > 0)
                [Retailer processResponse:retailers];
            
        } else {
            NSLog(@"IbottaAPI Request failed.");
            NSLog(@"Error:\n%@", [error description]);
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            [SVProgressHUD dismiss];
        });
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
