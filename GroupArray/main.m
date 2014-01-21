//
//  main.m
//  GroupArray
//
//  Created by Ignazio Calò on 20/1/14.
//  Copyright (c) 2014 it.ignazioc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Customer.h"
#import "NSArray+group.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *arr = [NSMutableArray array];
        for (int i = 0; i<100; i++) {
            Customer *c  = [Customer new];
            NSString *name = [NSString stringWithFormat:@"Customer n.%d", i];
            
            int randNum = rand() % 25 ;
            
            c.name = name;
            c.idx = randNum;
            [arr addObject:c];
            
        }
//        for (int i = 0; i<100; i++) {
//            NSLog(@"%@", arr[i]);
//        }
        
        
        NSDictionary *dictionaryForKey = [arr groupByKeyPath:@"name.length"];
        NSLog(@"Dict: %@", dictionaryForKey);
        
        NSDictionary *dictionary = [arr groupUsingBlock:^id<NSCopying>(Customer *obg){
            return @(obg.idx);
        
        }];
        NSLog(@"Dict: %@", dictionary);
        
        
    }
    return 0;
}

