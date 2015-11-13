#import "Offer.h"
#import "AppDelegate.h"
#import "Retailer.h"

@interface Offer ()

// Private interface goes here.

@end

@implementation Offer

// Custom logic goes here.

+ (void)processResponse:(NSArray *)offers {
    
    NSMutableArray *allOffers = [[Offer fetchAllOffers:[AppDelegate sharedInstance].managedObjectContext] mutableCopy];
    
    // enumerate thru remote retailers and insert/update local db
    for (NSDictionary *offerDict in offers) {
        Offer *offer = [Offer saveAttribute:offerDict];
        
        if([allOffers containsObject:offer])
            [allOffers removeObject:offer];
    }
    // cleanup retailers
    while([allOffers count])
    {
        [[AppDelegate sharedInstance].managedObjectContext deleteObject:[allOffers firstObject]];
        [allOffers removeObject:[allOffers firstObject]];
    }
    
    [[AppDelegate sharedInstance] saveContext];
}

+ (Offer *)saveAttribute:(NSDictionary *)offer {
    
    Offer *resource = [Offer fetchOneOfferWithServerID:[AppDelegate sharedInstance].managedObjectContext serverID:[offer objectForKey:@"id"]];
    
    if (!resource)
        resource = [Offer insertInManagedObjectContext:[AppDelegate sharedInstance].managedObjectContext];
    
    [resource build:offer];
    
    return resource;
}

- (void)build:(NSDictionary *)offer {
    
    self.name = [offer objectForKey:@"name"];
    self.serverID = [offer objectForKey:@"id"];
    self.iconURL = [offer objectForKey:@"url"];
    self.amount = [offer objectForKey:@"amount"];
    self.desc = [offer objectForKey:@"description"];
    self.totalLikes = [offer objectForKey:@"total_likes"];
    
    NSArray *retailers = [offer objectForKey:@"retailers"];
    
    for (id retailer in retailers) {
        self.retailer = retailer;
    }
    

}

@end
