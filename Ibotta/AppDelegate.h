//
//  AppDelegate.h
//  Ibotta
//
//  Created by Salomon Valverde on 11/9/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (AppDelegate *)sharedInstance;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;


@end

