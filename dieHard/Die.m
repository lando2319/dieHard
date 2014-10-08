//
//  Die.m
//  dieHard
//
//  Created by MIKE LAND on 10/8/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "Die.h"

@implementation Die

- (void)roll {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSLog(@"This Happens Second");
        int randomNumber = arc4random_uniform(7);
        NSLog(@"%d", randomNumber);

        if (randomNumber > 4) {
            NSLog(@"fell off");
            [self.delegate dieFellOffTheTable];
        } else {
            NSLog(@"Roll is");
            [self.delegate dieRolledWithValue:randomNumber];
        }
    });
    NSLog(@"This Happens First");
}

@end
