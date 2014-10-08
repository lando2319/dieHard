//
//  ViewController.m
//  dieHard
//
//  Created by MIKE LAND on 10/8/14.
//  Copyright (c) 2014 MIKE LAND. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()<DieDelegate>
@property (weak, nonatomic) IBOutlet UILabel *dieLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.die = [[Die alloc] init];
    self.die.delegate = self;
}

- (IBAction)onRollButtonPressed:(id)sender {
    [self.die roll];
}

- (void)dieRolledWithValue:(int)value {
    self.dieLabel.text = @(value).description;
    NSLog(@"go time");
}

- (void)dieFellOffTheTable{
    
}

@end
