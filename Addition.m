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
        
    }
    return self;
}

- (void)answeredWithInput:(NSString *)input {
    NSInteger inputAsInt = [input integerValue];
    self.correct = inputAsInt == self.answer;
}

@end
