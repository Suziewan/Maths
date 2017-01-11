//
//  QuestionFactory.m
//  Maths
//
//  Created by Angie Linton on 2017-01-11.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "QuestionFactory.h"
#import "Question.h"

@implementation QuestionFactory

- (Question *)generateRandomQuestion{
    
    NSArray *questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    
    int randomIndex = arc4random_uniform(questionSubclassNames.count); //use this rather than 4 to allow flexibility
    NSString *className = questionSubclassNames[randomIndex]; //getting the string out of the list
    return [[NSClassFromString(className) alloc]init];  //instantiating the class
    
}

@end
