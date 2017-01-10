//
//  main.m
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Addition.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char inputChars[200];
    
        
        BOOL gameOn = YES;
        
        while (gameOn) {
       
            Addition *addQ = [[Addition alloc] init];
            //            addQ.question;
            
            NSLog(@"%@", addQ.question);
            
            NSLog(@"Input answer: ");
            
            fgets(inputChars, 200, stdin);
            
            NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
            
            result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            if ([result isEqualToString:@"quit"]) {
                gameOn = NO;
                
            }
        }
        
//        Move input handling to a separate subclass of NSObject called something like InputHandler. We're going to need at least 1 method on this class that will use fgets and return the parsed NSString*.
//        
//    Question: Should this be an instance method or a class method? Try creating the method in both ways. Is there a reason to prefer one over the other?
//        Finally, import this new class into main.m. Test to make sure everything is still working correctly.
//        
        
    }
    return 0;
}
