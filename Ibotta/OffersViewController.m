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
#import "OfferCell.h"
#import "UIImageView+AFNetworking.h"
#import "OfferViewController.h"

@interface OffersViewController ()

@property (strong,nonatomic) NSArray *offers;

@end

@implementation OffersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.offers = [self.retailer.offers allObjects];
    
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"navbar-logo.png"]];
    self.navigationItem.titleView = imageView;
    
    self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@""
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:nil
                                                                            action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableView Datasource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.offers.count;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    OfferCell *cell = (OfferCell *)[tableView dequeueReusableCellWithIdentifier:@"OfferCell" forIndexPath:indexPath];
    
    [self configureCell:cell atIndexPath:indexPath];
    
    return cell;
}

- (void)configureCell:(OfferCell *)cell atIndexPath:(NSIndexPath *)indexPath {
    
    NSManagedObject *record = [self.offers objectAtIndex:indexPath.row];
    
    [cell.nameLbl setText:[record valueForKey:@"name"]];
    [cell.iconImgView setImageWithURL:[NSURL URLWithString:[record valueForKey:@"iconURL"]]];

}

#pragma mark - UITableView Delegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return 80.0;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSLog(@"prepare sender %@", [sender description]);
    
    if ([segue.identifier isEqualToString:@"offerSegue"]) {
        
        NSIndexPath *indexPath = [self.tableView indexPathForCell:sender];
        Offer *offer = [self.offers objectAtIndex:indexPath.row];
        OfferViewController *destViewController = [segue destinationViewController];
        
        [destViewController setOffer:offer];
    }
}

@end
