//
//  main.m
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        char inputChars[200];
        
        NSLog(@"Input something");
        
        fgets(inputChars, 200, stdin);
        
        NSString *result = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
        
        
  
        
        while (YES) {
            
        }
        
        
    }
    return 0;
}
