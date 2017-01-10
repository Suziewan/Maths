//
//  InputHandler.h
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

- (NSString*)getUserInputWithPrompt:(NSString *)prompt;


@end
//Move input handling to a separate subclass of NSObject called something like InputHandler. We're going to need at least 1 method on this class that will use fgets and return the parsed NSString*.
