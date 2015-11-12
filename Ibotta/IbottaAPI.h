//
//  NetworkManager.h
//  Ibotta
//
//  Created by Salomon Valverde on 11/11/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ CompletionHandler)(id, NSError *error);

@interface IbottaAPI : NSObject

+ (instancetype)sharedInstance;
- (void)retrieveRetailersWith:(CompletionHandler)completionHandler;

@end
