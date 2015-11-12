#import "Retailer.h"
#import "AppDelegate.h"

@interface Retailer ()

// Private interface goes here.

@end

@implementation Retailer

// Custom logic goes here.

+ (void)processResponse:(NSArray *)retailers {

    NSMutableArray *allRetailers = [[Retailer fetchAllRetailers:[AppDelegate sharedInstance].managedObjectContext] mutableCopy];
    
    // enumerate thru remote retailers and insert/update local db
    for (NSDictionary *retailerDict in retailers) {
        Retailer *retailer = [Retailer saveAttribute:retailerDict];

        if([allRetailers containsObject:retailer])
            [allRetailers removeObject:retailer];
    }
    // cleanup retailers
    while([allRetailers count])
    {
        [[AppDelegate sharedInstance].managedObjectContext deleteObject:[allRetailers firstObject]];
        [allRetailers removeObject:[allRetailers firstObject]];
    }
    
    [[AppDelegate sharedInstance] saveContext];
}

+ (Retailer *)saveAttribute:(NSDictionary *)retailer {
    
    Retailer *resource = [Retailer fetchOneRetailerWithServerID:[AppDelegate sharedInstance].managedObjectContext
                                                       serverID:[retailer objectForKey:@"id"]];
    
    if (!resource)
        resource = [Retailer insertInManagedObjectContext:[AppDelegate sharedInstance].managedObjectContext];
    
    [resource build:retailer];
    
    return resource;
}


- (void)build:(NSDictionary *)retailer {
    
    self.name = [retailer objectForKey:@"name"];
    self.serverID = [retailer objectForKey:@"id"];
    self.iconURL = [retailer objectForKey:@"icon_url"];
}

@end
