//
//  QuestionFactory.h
//  Maths
//
//  Created by Angie Linton on 2017-01-11.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

- (Question *)generateRandomQuestion;

@end
