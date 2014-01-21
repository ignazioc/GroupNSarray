//
//  NSArray+group.h
//  GroupArray
//
//  Created by Ignazio Calò on 20/1/14.
//  Copyright (c) 2014 it.ignazioc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (group)

-(NSDictionary *)groupUsingBlock:(id<NSCopying> (^)(id obj))block;
-(NSDictionary *)groupByKeyPath:(NSString *) keyPath;
@end
