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
        
        _question = [[NSString alloc] init];
        _answer = [[NSString alloc] init];  //what to use here instead?
        
        NSInteger _firstNumber = arc4random_uniform(100);
        NSInteger _secondNumber = arc4random_uniform(0);
        
        NSString
    }
    return self;
}

@end
