//
//  QuestionManager.m
//  Maths
//
//  Created by Angie Linton on 2017-01-11.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc]init];
        
    }
    return self;
}
- (NSString*) timeOutput{
    
    int total = [self totalTime];
    
    int average = total / self.questions.count; //counts the number of objects in the array
    
    NSString *timeOutput = [NSString stringWithFormat:@"Total time: %.0d Average time: %.0d", total, average];
    
    return timeOutput;
    
}
- (NSInteger) totalTime{
    int total = 0;
    for (Question *question in self.questions){
        
        total = total + [question answerTime];
    }
    return total;
}


@end


//OK so let's go ahead and create a class called QuestionManager.(done)
//Give it a property of type NSMutableArray called questions. (done)
//You will need to initialize this property to an empty array. Do so by overriding the QuestionManager's init method. (done, but have a warning)
//Next go ahead and instantiate QuestionManager outside while in main.m. (done)

//When you create an AdditionQuestion instance in main.m remember to add it to the questions array`. (done)
//In main.m call this method. Log the returned string. Your app should now be able to produce an output like this:

