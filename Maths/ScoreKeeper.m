//
//  ScoreKeeper.m
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "ScoreKeeper.h"
#import "Addition.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mathObjects = [[NSMutableArray alloc]init];
    }
    return self;
}
//create a method (score)

- (NSString *) score{
    
    // declare 2 local variables that are int types
    // call correct incorrect
    
    NSInteger correct = 0;
    NSInteger incorrect = 0;
    
    // loop though the array of math objects
    for (Addition *addition in self.mathObjects) {
        if(addition.correct) {
            correct += 1;
        } else {
            incorrect += 1;
        }
    }
    //create a variable with the result
    //return the result in a sep line
     NSString *message = [NSString stringWithFormat:@"You have %ld correct answers and %ld incorrect answers", correct, incorrect];
    return message;
    
}


@end

//-(NSString*)getScore:(NSString)

