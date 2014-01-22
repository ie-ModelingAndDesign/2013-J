//
//  Dice.m
//  LotAppFirst
//
//  Created by Shuichiro KUDAKA on 2014/01/14.
//  Copyright (c) 2014年 ie-ModelingAndDesign team-J. All rights reserved.
//

#import "Dice.h"

@interface Dice ()

@end

@implementation Dice

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    ResultList = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ShakeDice:(id)sender {
    RandomNumbers = arc4random() % 6;
    show.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers]];
}
@end
