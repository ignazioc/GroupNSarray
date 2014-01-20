//
//  Customer.m
//  GroupArray
//
//  Created by Ignazio Calò on 20/1/14.
//  Copyright (c) 2014 it.ignazioc. All rights reserved.
//

#import "Customer.h"

@implementation Customer
-(NSString *)description {
    return [NSString stringWithFormat:@"[%. 4d] %@", self.idx, self.name];
}
@end
