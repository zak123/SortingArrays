//
//  main.m
//  SortingArrays
//
//  Created by Zachary Mallicoat on 3/17/15.
//  Copyright (c) 2015 cghcapital. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MuhArrays.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
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
        
        
        NSArray *sortedByAlphabet = [arrayToSort sortedArrayUsingComparator:^NSComparisonResult(id firstWord, id secondWord) {
            
            return [firstWord compare:secondWord options:NSCaseInsensitiveSearch];
        
            }];
        
        NSArray *sortedByLength = [arrayToSort sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2)  {
            if (obj1.length > obj2.length) {
                return NSOrderedAscending;
                
            }
            
            if (obj1.length < obj2.length) {
                return NSOrderedDescending;
            }
            
            return NSOrderedSame;
        }];
        
        NSArray *sortedByLastCharacter = [arrayToSort sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2)  {
            
            NSString *lastChar1 = [obj1 substringFromIndex:[obj1 length] - 1];
            NSString *lastChar2 = [obj2 substringFromIndex:[obj2 length] -1];

            return [lastChar1 compare:lastChar2 options:NSCaseInsensitiveSearch];
        }];
        
        NSArray *sortedByOccurencesOfE = [arrayToSort sortedArrayUsingComparator:^NSComparisonResult(NSString *obj1, NSString *obj2)  {
            NSCharacterSet *ee = [NSCharacterSet characterSetWithCharactersInString:@"eE"];
            
            NSUInteger numberOfOccurrences1 = [[obj1 componentsSeparatedByCharactersInSet:ee] count] - 1;
            NSUInteger numberOfOccurrences2 = [[obj2 componentsSeparatedByCharactersInSet:ee] count] - 1;
            
            if (numberOfOccurrences1 > numberOfOccurrences2) {
                return NSOrderedAscending;
            }
            
            if (numberOfOccurrences1 < numberOfOccurrences2) {
                return NSOrderedDescending;
            }
            
            return NSOrderedSame;
            
            
        }];
//            NSSortDescriptor *sortDescriptor;
//            sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"length"
//                                                          ascending:YES];
//            NSArray *sortedByLength = [NSArray arrayWithObject:sortDescriptor];
//        [arrayToSort sortUsingDescriptors:sortDescriptor];

        
        NSLog(@"%@", sortedByOccurencesOfE);
    }
    return 0;
}
