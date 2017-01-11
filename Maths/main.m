//
//  main.m
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Addition.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char inputChars[200];
        
        BOOL gameOn = YES;

        // create scorekeeper instance
      
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
       
        while (gameOn) {
            
            Addition *addQ = [[Addition alloc] init];//only use the * when declaring
            
            
            // add the addition object to the the score keep instance property
            
            [scoreKeeper.mathObjects addObject:addQ];
            
            NSLog(@"%@", addQ.question);
            
            NSLog(@"Input answer: ");
            
            fgets(inputChars, 200, stdin);
            
            NSString *input = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            
            input = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([input isEqualToString:@"quit"]) {
                gameOn = NO;
            }

            [addQ answeredWithInput:input];
            BOOL isCorrect = addQ.correct;
            NSLog(@"%@", isCorrect == YES ? @"You're right!" : @"You're wrong!");
            
            NSLog(@"%@", [scoreKeeper score]);
        }
        
    }
    return 0;
}
