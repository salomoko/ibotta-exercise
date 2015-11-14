//
//  OffersViewController.h
//  Ibotta
//
//  Created by Salomon Valverde on 11/13/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Retailer.h"

@interface OffersViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
//NSFetchedResultsControllerDelegate

@property (strong,nonatomic) Retailer *retailer;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
