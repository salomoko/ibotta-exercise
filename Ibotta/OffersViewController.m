//
//  OffersViewController.m
//  Ibotta
//
//  Created by Salomon Valverde on 11/13/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import "OffersViewController.h"
#import "AppDelegate.h"
#import "SVProgressHUD.h"

@interface OffersViewController ()

@end

@implementation OffersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setTitle:@"Offers"];
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(mocSaved:)
                                                 name:NSManagedObjectContextDidSaveNotification
                                               object:[AppDelegate sharedInstance].managedObjectContext];
}

- (void)mocSaved:(NSNotification*)notification {
    
    //    NSLog(@"mocSaved:\n %@", [notification description]);
    
    [SVProgressHUD dismiss]; // dismiss any loading indicator
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
