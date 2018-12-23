//
//  main.m
//  Largest Number
//
//  Created by Kamal Maged on 2018-12-17.
//  Copyright © 2018 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

NSNumber* largestNumber(NSArray *numbers){
    
    NSNumber *largestValue;
    
    for (NSNumber *value1 in numbers) {
        
        int total = 0; //a variable holding the total number of times value1 was greater than value2
        
        for (NSNumber *value2 in numbers){
            
            if(![value1 compare:value2]) {total ++;} //incrementing total value if value1 equals value2
            
            total = total + [value1 compare:value2];//incremented each time value1 is greater than value2
        
            if ( total == ([numbers count])){
                largestValue = value1;// if value1 was greater than all other elements of the array i.e. all iterations of value2
            }
        }
    }
    return largestValue;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *numbers = [[NSArray alloc]initWithObjects: @7.8f, @700, @40.6f, @1, @700, @94, @-22, @700, nil];
        NSLog(@"largest number is %@", largestNumber(numbers));
        
        NSArray *numbers2 = [[NSArray alloc]initWithObjects: @8, @9 ,@45, @22, @22, @15, @-10, @390, nil];
        NSLog(@"largest number for second array is %@", largestNumber(numbers2));
    }
    return 0;
}
