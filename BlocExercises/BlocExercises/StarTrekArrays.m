//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    /* WORK HERE */
    /*first attempt - mis understood the assignment
     
     NSMutableArray *starTrekCharacters = [@[@"worf", @"picard", @"crusher"] mutableCopy];
    
    NSString *starTrekString = [starTrekCharacters componentsJoinedByString:@", "];
    
    return @[starTrekString];
     
    */
    
    
    
        /* second attempt, still fails
    
         NSString *starTrekCharacters = @"Captain Jean-Luc Picard of the USS Enterprise, Beverly Crusher Chief Medical Officer, Worf son of Mogh slayer of Gowron";
         NSArray *starTrekFromArray = [starTrekCharacters componentsSeparatedByString:@", "];
    
         return @[starTrekFromArray];
     */
    
    
    
    return [characterString componentsSeparatedByString:@";"];
    
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE */
    
    //first attempt
    //return [characterArray componentsJoinedByString:@","];
    
    return [characterArray componentsJoinedByString:@";"];
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    /* WORK HERE 
    
     Returns an array of alphabetically sorted character names.
     @param characterArray An array of unsorted character names, like @[@"Wesley", @"Q"].
     @return A sorted array, like @[@"Q", @"Wesley"].
     */
    
    //first attempt
    //NSSortDescriptor *sort = [[NSSortDescriptor alloc] initWithKey:nil ascending:NO];
    
        NSArray *alphabetizedArray = [characterArray sortedArrayUsingSelector:@selector(caseInsensitiveCompare:)];
        return alphabetizedArray;
    }



- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    /**
     Indicates whether the provided array of Star Trek characters contains Worf.
     @param characterArray An array of character names.
     @note Worf should be detected anywhere in the string, in any case.  For example, @"lieutenant commander worf" and @"WORF THE KLINGON" should both cause this method to return @c YES.
     @return @c YES if Worf is present in the array, or @c NO if he is not.
     */
    
    for (NSString *characterName in characterArray) {
        NSString *lowercaseName = characterName.lowercaseString;
        NSRange worfRange = [lowercaseName rangeOfString:@"worf"];
        if (worfRange.location != NSNotFound) {
            return YES;
        }
    }
    return NO;
}

@end
