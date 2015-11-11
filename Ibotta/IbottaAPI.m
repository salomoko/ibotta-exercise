//
//  NetworkManager.m
//  Ibotta
//
//  Created by Salomon Valverde on 11/11/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import "IbottaAPI.h"
#import "AFNetworking.h"

static NSString * const APIBaseURL = @"http://salomon.io/ibotta/";

@implementation IbottaAPI

+ (instancetype)sharedInstance
{
    static dispatch_once_t once;
    static id sharedInstance;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}

- (void)retrieveRetailers {
    

    NSString *string = [NSString stringWithFormat:@"%@Retailers.json", APIBaseURL];
    NSURL *url = [NSURL URLWithString:string];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    AFHTTPRequestOperation *operation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    operation.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [operation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"Retailers:\n%@", [responseObject description]);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Retailers Error:\n%@", [error description]);
    }];
    
    [operation start];
}

- (void)retrieveOffers {
    
}

- (void)retrieveLocations {
    
}

@end
