//
//  InputHandler.m
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString *)getUserInputWithPrompt:(NSString *)prompt{
    
    NSLog(@"%@", prompt);
    NSLog(@"Input answer: ");
    
    char inputChars[200];

    fgets(inputChars, 200, stdin);
    
    NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

    
    return result;
//next task is how to use this method...

}

//NSString* result = [];


//We're going to need at least 1 method on this class that will use fgets and return the parsed NSString*.
//Question: Should this be an instance method or a class method? Try creating the method in both ways. Is there a reason to prefer one over the other?
//Finally, import this new class into main.m. Test to make sure everything is still working correctly.


@end
