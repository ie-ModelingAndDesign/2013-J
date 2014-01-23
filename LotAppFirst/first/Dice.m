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

- (IBAction)makedice:(id)sender {
}

- (IBAction)ShakeDice:(id)sender {
    RandomNumbers = arc4random() % 6;
    RandomNumbers2 = arc4random() % 6;
    RandomNumbers3 = arc4random() % 6;
    RandomNumbers4 = arc4random() % 6;
    RandomNumbers5 = arc4random() % 6;
    RandomNumbers6 = arc4random() % 6;
    if (kazu == 0) {
        show.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers]];
        two.text = [NSString stringWithFormat: @"2個目"];
        san.text = [NSString stringWithFormat: @"3個目"];
        yon.text = [NSString stringWithFormat: @"4個目"];
        go.text = [NSString stringWithFormat: @"5個目"];
        six.text = [NSString stringWithFormat: @"6個目"];
    }
    if (kazu == 1) {
        show.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers]];
        two.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers2]];
        san.text = [NSString stringWithFormat: @"3個目"];
        yon.text = [NSString stringWithFormat: @"4個目"];
        go.text = [NSString stringWithFormat: @"5個目"];
        six.text = [NSString stringWithFormat: @"6個目"];
    }
    if (kazu == 2) {
        show.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers]];
        two.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers2]];
        san.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers3]];
        yon.text = [NSString stringWithFormat: @"4個目"];
        go.text = [NSString stringWithFormat: @"5個目"];
        six.text = [NSString stringWithFormat: @"6個目"];
    }
    if (kazu == 3) {
        show.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers]];
        two.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers2]];
        san.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers3]];
        yon.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers4]];
        go.text = [NSString stringWithFormat: @"5個目"];
        six.text = [NSString stringWithFormat: @"6個目"];
    }
    if (kazu == 4) {
        show.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers]];
        two.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers2]];
        san.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers3]];
        yon.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers4]];
        go.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers5]];
        six.text = [NSString stringWithFormat: @"6個目"];
    }
    if (kazu == 5) {
        show.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers]];
        two.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers2]];
        san.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers3]];
        yon.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers4]];
        go.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers5]];
        six.text = [NSString stringWithFormat: @"%@",[ResultList objectAtIndex:RandomNumbers6]];
    }
    
    
}

- (IBAction)kosuu:(id)sender {
    kazu += 1;
    if (kazu == 0) {
        kosuu.text =[NSString stringWithFormat: @"1個"];
    }else if(kazu == 1) {
        kosuu.text =[NSString stringWithFormat: @"2個"];
    }else if(kazu == 2){
        kosuu.text =[NSString stringWithFormat: @"3個"];
    }else if(kazu == 3){
        kosuu.text =[NSString stringWithFormat: @"4個"];
    }else if(kazu == 4){
        kosuu.text =[NSString stringWithFormat: @"5個"];
    }else if(kazu == 5){
        kosuu.text =[NSString stringWithFormat: @"6個"];
    }else{
        kosuu.text =[NSString stringWithFormat: @"1個"];
        kazu =0;
    }
        
}
@end
