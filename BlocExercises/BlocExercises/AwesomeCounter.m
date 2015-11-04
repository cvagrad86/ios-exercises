//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter
/*

 Creates a string of numbers between two numbers, inclusively.
 
 Example usage:
 
 @code
 NSString *numbers = [counter stringWithNumbersBetweenNumber:1 andOtherNumber:3];
 // numbers is "123"
 @endcode
 
 @param number
 A number at one end of the range.
 
 @param otherNumber
 The number at the other end of the range.
 
 @note Either @c number or @c otherNumber may be the lower number, but the string always includes numbers from lowest to highest.
 
 @return Returns a string of numbers between two numbers, inclusively.
 */


    - (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
        if (number == otherNumber) {
            return [NSString stringWithFormat:@"%ld", (long)number];
        }
        
        NSInteger lowNumber, highNumber;
        
        if (number < otherNumber) {
            lowNumber = number;
            highNumber = otherNumber;
        } else {
            lowNumber = otherNumber;
            highNumber = number;
        }
        
        NSMutableString *returnString = [NSMutableString string];
        
        for (NSInteger i = lowNumber; i <= highNumber; i++) {
            [returnString appendFormat:@"%ld", (long)i];
        }
        
        return returnString;
    }
    
    


@end
