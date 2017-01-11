//
//  ScoreKeeper.h
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) NSInteger rightAnswer;
@property (nonatomic, assign) NSInteger wrongAnswer;


@end
//Think about the job of this class. It's going to have to track the number of right and wrong answers. It will also need to generate a string representation of the score for logging.
//
//So, we will need 2 properties and 1 method. The properties will track the right and wrong counts. The method will output a string like this: score: 3 right, 2 wrong ---- 60%
//
//You will need to import and instantiate ScoreKeeper in main.m. Run and test your work.
