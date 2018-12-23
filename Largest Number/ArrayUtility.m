//
//  ArrayUtility.m
//  Largest Number
//
//  Created by Kamal Maged on 2018-12-23.
//  Copyright © 2018 Kamal Maged. All rights reserved.
//

#import "ArrayUtility.h"

@implementation ArrayUtility

-(NSNumber *) largestNumber: (NSArray *) numbers{
    
    NSNumber *largestValue;
    
    for (NSNumber *value1 in numbers) {
        
        int total = 0; //a variable holding the total number of times value1 was greater than value2
        
        for (NSNumber *value2 in numbers){
            
            if(![value1 compare:value2]) {total ++;} //incrementing total value if value1 equals value2
            
            total = total + [value1 compare:value2];//incremented each time value1 is greater than value2
            
            if ( total == ([numbers count])){
                largestValue = value1;// if value1 was greater than or equal all other elements of the array i.e. all iterations of value2
            }
        }
    }
    return largestValue;
}

-(NSNumber *) smallestNumber: (NSArray *) numbers{
    
    NSNumber *smallestValue;
    
    for (NSNumber *value1 in numbers) {
        
        int total = 0; //a variable holding the total number of times value1 was smaller than value2
        
        for (NSNumber *value2 in numbers){
            
            if(![value1 compare:value2]) {total --;} //decrementing total value if value1 equals value2
            
            total = total + [value1 compare:value2];//decremented each time value1 is greater than value2
            
            if ( total == (-[numbers count])){
                smallestValue = value1;// if value1 was smaller than or equal all other elements of the array i.e. all iterations of value2
            }
        }
    }
    return smallestValue;
}

-(NSNumber *) medianNumber: (NSArray *) numbers{
    
    NSNumber *medianValue;
    NSNumber * median1;
    NSNumber * median2;
    
    for (NSNumber *value1 in numbers) {
        
        int total = 0;
        
        for (NSNumber *value2 in numbers){
            total = total + [value1 compare:value2];
        }
        
        if (([numbers count] % 2) == 0) {
            if (total == 1) {
                median1 = value1;
            }
            if (total == -1) {
                median2 = value1;
            }
                
            medianValue = @(([median1 doubleValue] + [median2 doubleValue]) / 2);
        }
        if ( total == 0 ){
            medianValue = value1;
            }
    }
    return medianValue;
}

@end
