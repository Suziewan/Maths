//
//  QuestionManager.m
//  Maths
//
//  Created by Angie Linton on 2017-01-11.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
    }
    return self;
}


@end


//OK so let's go ahead and create a class called QuestionManager.(done)
//Give it a property of type NSMutableArray called questions. (done)
//You will need to initialize this property to an empty array. Do so by overriding the QuestionManager's init method. (done, but have a warning)
//Next go ahead and instantiate QuestionManager outside while in main.m. (done)

//When you create an AdditionQuestion instance in main.m remember to add it to the questions array`.
