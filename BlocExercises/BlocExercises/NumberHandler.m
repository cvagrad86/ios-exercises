//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    /* WORK HERE */
    //first attempt  NSNumber *doubleNumber = [number * 2];
    
    NSNumber *bNumber = [NSNumber numberWithInt:[number intValue] * 2];
    return bNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    /* WORK HERE */
    NSMutableArray *mutableRange = [NSMutableArray new];
    for (NSInteger i = number; i <= otherNumber; i++)  {
        [mutableRange addObject:@(i)];
    }
    return [mutableRange copy];
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    /* first attempt
   NSNumber *smallNumber = [arrayOfNumbers valueForKeyPath:@"@min.self"];
    
    return smallNumber;
     */
    
    NSInteger lowestNumber = NSIntegerMax;
    
    for (NSNumber *number in arrayOfNumbers) {
        NSInteger integerValue = [number integerValue];
        
        if (integerValue < lowestNumber) {
            lowestNumber = integerValue;
        }
    }
    
    return lowestNumber;

}

@end
