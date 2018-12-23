//
//  ArrayUtility.h
//  Largest Number
//
//  Created by Kamal Maged on 2018-12-23.
//  Copyright © 2018 Kamal Maged. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ArrayUtility : NSObject

-(NSNumber *) largestNumber: (NSArray *) numbers;
-(NSNumber *) smallestNumber: (NSArray *) numbers;
-(NSNumber *) medianNumber: (NSArray *) numbers;

@end

NS_ASSUME_NONNULL_END
