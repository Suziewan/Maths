//
//  MultiplicationQuestion.m
//  Maths
//
//  Created by Angie Linton on 2017-01-11.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "MultiplicationQuestion.h"
#import "Question.h"

@implementation MultiplicationQuestion

- (void) generateQuestion{
    self.question =  [NSString stringWithFormat:@"%ld * %ld ?",self.leftValue, self.rightValue ];
}

- (void) generateAnswer{
    self.answer =  self.rightValue + self.leftValue;
}


@end
