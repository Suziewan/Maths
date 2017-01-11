//
//  ScoreKeeper.h
//  Maths
//
//  Created by Angie Linton on 2017-01-10.
//  Copyright © 2017 Angie Linton. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, strong) NSMutableArray *mathObjects;

// property that is mutable array of Addition object instances
- (NSString *) score;  //method signature


@end
