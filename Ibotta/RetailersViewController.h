//
//  ViewController.h
//  Ibotta
//
//  Created by Salomon Valverde on 11/9/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface RetailersViewController : UIViewController <UITableViewDataSource, UITableViewDelegate, NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@end

