//
//  NSArray+group.m
//  GroupArray
//
//  Created by Ignazio Calò on 20/1/14.
//  Copyright (c) 2014 it.ignazioc. All rights reserved.
//

#import "NSArray+group.h"

@implementation NSArray (group)


-(NSDictionary *)groupUsingBlock:(id<NSCopying> (^)(id obj))block {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    for (id obj in self) {
        id<NSCopying> key = block(obj);
        if (! dictionary[key]) {
            NSMutableArray *arr = [NSMutableArray array];
            dictionary[key] = arr;
        }
        [dictionary[key] addObject:obj];
    }
    return [dictionary copy];
}


-(NSDictionary *)groupByKeyPath:(NSString *) keyPath {
    return [self groupUsingBlock:^id<NSCopying>(id obj) {
        return [obj valueForKeyPath:keyPath];
    }];
}
@end
