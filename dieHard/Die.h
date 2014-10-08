//
//  Die.h
//  dieHard
//
//  Created by MIKE LAND on 10/8/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol DieDelegate

- (void)dieRolledWithValue:(int)value;
- (void)dieFellOffTheTable;

@end

@interface Die : NSObject
@property Die *die;

- (void)roll;

@property id <DieDelegate> delegate;

@end
