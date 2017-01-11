//
//  Addition.m
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "Addition.h"

@implementation Addition



-(instancetype)init{
    if (self = [super init]){
        
        _firstNumber = arc4random_uniform(100);
        _secondNumber = arc4random_uniform(100);
        
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", _firstNumber, _secondNumber];
        
        _answer = _firstNumber + _secondNumber;
        
        _startTime = [NSDate date]; //WHY HERE? WHY DOES endTime GO ELSEWHERE?
    }
    return self;
}

- (void)answeredWithInput:(NSString *)input {
    NSInteger inputAsInt = [input integerValue];
    self.correct = inputAsInt == self.answer;
}

-(NSInteger) answer{
    _endTime = [NSDate date];
    
    return _answer;
}

- (NSTimeInterval) answerTime{
    return [self.endTime timeIntervalSinceDate:self.startTime];   //returns the properties i created using the 
    //now I can ask for answerTime
    
}

@end
//You will want to round this value to make it more human readable.  **DO I DO THIS WHEN I LOG IT OUT? **MODIFY THE TOKEN @"%d" AND USE @"%.0d"






