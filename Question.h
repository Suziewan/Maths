//
//  Question.h
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

@property (nonatomic) NSString *question; //use nsstring as a property
@property (nonatomic, assign) NSInteger answer;
//@property (nonatomic, assign) NSInteger firstNumber;
//@property (nonatomic, assign) NSInteger secondNumber;
@property (nonatomic, assign) NSInteger rightValue;
@property (nonatomic, assign) NSInteger leftValue;
@property (nonatomic) BOOL correct;
@property (nonatomic)NSDate* startTime;
@property (nonatomic)NSDate* endTime;


- (void)answeredWithInput:(NSString *)input;
- (NSTimeInterval) answerTime;
- (NSInteger) answer;
- (void) generateQuestion;
- (void)generateAnswer;

@end
//Notes from breakout 1/10
//NSInteger is not a an object so you don't declare it

//Super is used rather than self in order to go to the parent class
//when would you override setters? answer: mostly for validation, or to reset other values
//muteable array is useful when you may be adding or changing things later
