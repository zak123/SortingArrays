//
//  MuhArrays.m
//  SortingArrays
//
//  Created by Zachary Mallicoat on 3/17/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import "MuhArrays.h"

@implementation MuhArrays


-(instancetype)init {
    self = [super init];
    if (self) {
        NSArray *arrayToSort =                          @[@"eeeeeAAbfdf",
                                                          @"Everything",
                                                          @"news to me",
                                                          @"timepiece",
                                                          @"egg",
                                                          @"eggs",
                                                          @"paper",
                                                          @"e",
                                                          @"facbeook",
                                                          @"painting",
                                                          @"231 thurlow st",
                                                          @"99 bottles"];
        NSArray *sortedArray = [arrayToSort sortedArrayUsingComparator:^NSComparisonResult(id firstWord, id secondWord) {
            
          return [firstWord compare:secondWord options:NSCaseInsensitiveSearch];
            
        }];
        
        
//        NSArray *sortedArray = [arrayToSort sortedArrayUsingComparator:<#^NSComparisonResult(id obj1, id obj2)cmptr#>]
        
        
    }
    return self;
}


@end
