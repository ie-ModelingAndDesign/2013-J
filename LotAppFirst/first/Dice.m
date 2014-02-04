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
@synthesize userName = _userName;
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
    Coin = [NSArray arrayWithObjects:@"表",@"裏", nil];
    
    //ResultList = [NSArray arrayWithObjects:@"1",@"2",@"3",@"4",@"5",@"6", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makedice:(id)sender {
    self.userName = self.sided.text;
    NSString *nameString = self.userName;
    if ([nameString length] == 0) {
        nameString = @"6";
    }
    c=nameString.intValue;
    int m;
    //array1 = [NSMutableArray array];
    ResultList = [NSMutableArray array];
    for (m=1; m<=c; m++) {
        //[array1 addObject:[NSNumber numberWithInteger:m]];
        [ResultList addObject:[NSNumber numberWithInteger:m]];
    }
    
}

- (IBAction)ShakeDice:(id)sender {
    RandomNumbers = arc4random() % c;
    RandomNumbers2 = arc4random() % c;
    RandomNumbers3 = arc4random() % c;
    RandomNumbers4 = arc4random() % c;
    RandomNumbers5 = arc4random() % c;
    RandomNumbers6 = arc4random() % c;
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

- (IBAction)shakeCoin:(id)sender {
    RandomNumbers7 = arc4random() % 2;
    RandomNumbers8 = arc4random() % 2;
    RandomNumbers9 = arc4random() % 2;
    RandomNumbers10 = arc4random() % 2;
    RandomNumbers11 = arc4random() % 2;
    if (kazu2 == 0) {
        show2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers7]];
        two2.text = [NSString stringWithFormat: @"2枚目"];
        san2.text = [NSString stringWithFormat: @"3枚目"];
        yon2.text = [NSString stringWithFormat: @"4枚目"];
        go2.text = [NSString stringWithFormat: @"5枚目"];
    }
    if (kazu2 == 1) {
        show2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers7]];
        two2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers8]];
        san2.text = [NSString stringWithFormat: @"3枚目"];
        yon2.text = [NSString stringWithFormat: @"4枚目"];
        go2.text = [NSString stringWithFormat: @"5枚目"];
    }
    if (kazu2 == 2) {
        show2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers7]];
        two2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers8]];
        san2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers9]];
        yon2.text = [NSString stringWithFormat: @"4枚目"];
        go2.text = [NSString stringWithFormat: @"5枚目"];
    }
    if (kazu2 == 3) {
        show2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers7]];
        two2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers8]];
        san2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers9]];
        yon2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers10]];
        go2.text = [NSString stringWithFormat: @"5枚目"];
    }
    if (kazu2 == 4) {
        show2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers7]];
        two2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers8]];
        san2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers9]];
        yon2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers10]];
        go2.text = [NSString stringWithFormat: @"%@",[Coin objectAtIndex:RandomNumbers11]];
    }

}

- (IBAction)kosuu2:(id)sender {
    kazu2 += 1;
    if (kazu2 == 0) {
        kosuu2.text =[NSString stringWithFormat: @"1枚"];
    }else if(kazu2 == 1) {
        kosuu2.text =[NSString stringWithFormat: @"2枚"];
    }else if(kazu2 == 2){
        kosuu2.text =[NSString stringWithFormat: @"3枚"];
    }else if(kazu2 == 3){
        kosuu2.text =[NSString stringWithFormat: @"4枚"];
    }else if(kazu2 == 4){
        kosuu2.text =[NSString stringWithFormat: @"5枚"];
    }else{
        kosuu2.text =[NSString stringWithFormat: @"1枚"];
        kazu2 =0;
    }
    

}
- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.sided) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
