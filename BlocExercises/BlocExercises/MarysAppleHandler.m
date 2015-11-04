//
//  MarysAppleHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/8/14.
//
//

#import "MarysAppleHandler.h"

@implementation MarysAppleHandler

- (NSString *) itemMaryCanPurchaseForDollars:(NSInteger)dollars {
    NSString *itemToReturn;

    if (dollars >= 100000000) {
        itemToReturn = @"have The Big Apple";
    } else if (dollars >= 1000) {
        itemToReturn = @"have an Apple computer";
    } else if (dollars >= 6) {
        itemToReturn = @"have an apple";
    } else if (dollars >= 5) {
        itemToReturn = @"have some gum";
    } else {
        itemToReturn = @"get out of my store";
    }
    
    NSLog(@"For $%ld, Mary can: %@", (long)dollars, itemToReturn);
    return itemToReturn;
}

- (NSUInteger) dollarCostForAppleFlavoredVodka {
    /* WORK HERE */
    //variable = conditional@ yes_value: no_value
    
    
   //my first attempts
    //NSUInteger cost = 24;
    //NSUInteger getsDiscount = (cost > 17) ? cost *= .75: cost;
    
    /*if (self.getsDiscount) {
        cost *= .75;
    }
    */
    NSUInteger cost = 24;
   
    return cost * (self.getsDiscount ? .75 : 1);
}

@end
