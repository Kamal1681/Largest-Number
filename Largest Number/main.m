//
//  main.m
//  Largest Number
//
//  Created by Kamal Maged on 2018-12-17.
//  Copyright © 2018 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArrayUtility.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *firstArray = [[NSArray alloc]initWithObjects: @7.8f, @22, @800.5, @1, @700, @36, @-2, @900, nil];
        ArrayUtility *firstArrayUtility = [[ArrayUtility alloc]init];

        NSLog(@"largest number is %@", [firstArrayUtility largestNumber:firstArray]);
        NSLog(@"smallest number is %@", [firstArrayUtility smallestNumber:firstArray]);
        NSLog(@"median number is %@", [firstArrayUtility medianNumber:firstArray]);
        
        
        
        NSArray *secondArray = [[NSArray alloc]initWithObjects: @8, @2.6f, @12 ,@45, @6, @22, @10, @-10, @390, nil];
        ArrayUtility *secondArrayUtility = [[ArrayUtility alloc]init];
        NSLog(@"largest number for second array is %@", [secondArrayUtility largestNumber:secondArray]);
        NSLog(@"smallest number for second array is %@", [secondArrayUtility smallestNumber:secondArray]);
        NSLog(@"median number for second array is %@", [secondArrayUtility medianNumber:secondArray]);
    }
    return 0;
}
