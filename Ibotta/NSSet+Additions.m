//
//  NSSet+Additions.m
//  Ibotta
//
//  Created by Salomon Valverde on 11/13/15.
//  Copyright © 2015 Salomon Valverde. All rights reserved.
//

#import "NSSet+Additions.h"

@implementation NSSet (Additions)

- (BOOL)containsKindOfClass:(Class)class {
    for (id element in self) {
        if ([element isKindOfClass:class])
            return YES;
    }
    return NO;
}

@end
