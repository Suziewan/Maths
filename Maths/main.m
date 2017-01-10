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
        
        
        
        
    }
    return 0;
}
