//
//  SerialLot.m
//  LotAppFirst
//
//  Created by Shuichiro KUDAKA on 2014/01/15.
//  Copyright (c) 2014年 ie-ModelingAndDesign team-J. All rights reserved.
//

#import "SerialLot.h"

@interface SerialLot ()

@end

@implementation SerialLot

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
    UITapGestureRecognizer *gestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(closeSoftKeyboard)];
    [self.view addGestureRecognizer:gestureRecognizer];
    lotElement = [NSMutableArray arrayWithObjects:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeArray:(id)sender {
    if ([self.elementStart.text isEqualToString:@""]) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"入力値が不正です！"
                              message:@"範囲が指定されていません。"
                              delegate:self
                              cancelButtonTitle:@"確認" otherButtonTitles:nil];
        [alert show];
        return;
    } else if ([self.elementEnd.text isEqualToString:@""]) {
        UIAlertView *alert = [[UIAlertView alloc]
                              initWithTitle:@"入力値が不正です！"
                              message:@"範囲が指定されていません。"
                              delegate:self
                              cancelButtonTitle:@"確認" otherButtonTitles:nil];
        [alert show];
        return;
    }
    if ([self.elementStart.text characterAtIndex:0] > [self.elementEnd.text characterAtIndex:0]) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"入力値が不正です。！" message:@"範囲指定に誤りがあります。" delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
        [alert show];
        return;
    }
    
    outputElement.text = [NSString stringWithFormat:@"？"];
    arrayIndex = 0;
    int j = 0;
    [lotElement removeAllObjects];
    
    i = [self.elementEnd.text characterAtIndex:0] - [self.elementStart.text characterAtIndex:0];
    for (asciiCode = [self.elementStart.text characterAtIndex:0]; j <= i; j++) {
        [lotElement addObject:[NSString stringWithFormat:@"%c", asciiCode]];
        asciiCode = ++asciiCode;
    }
    
    int m;
    for (m = 0; m < [lotElement count]; ++m) {
        int l = [lotElement count] - m;
        int n = arc4random_uniform(l) + m;
        [lotElement exchangeObjectAtIndex:m withObjectAtIndex:n];
    }
    
    self.elementStart.text =  [NSString stringWithFormat:@"%c",[self.elementStart.text characterAtIndex:0]];
    self.elementEnd.text =  [NSString stringWithFormat:@"%c",[self.elementEnd.text characterAtIndex:0]];
}

- (IBAction)castLots:(id)sender {
    if (arrayIndex >= [lotElement count]) {
        outputElement.text = [NSString stringWithFormat:@"くじがありません。"];
    } else {
        if ([lotElement objectAtIndex:arrayIndex] == nil) {
            outputElement.text = [NSString stringWithFormat:@"空くじ"];
        } else {
            outputElement.text = [NSString stringWithFormat: @"%@",[lotElement objectAtIndex:arrayIndex]];
        }
        arrayIndex = ++arrayIndex;
    }
}

- (void)closeSoftKeyboard {
    [self.view endEditing: YES];
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    if (textField == self.elementStart) {
        [textField resignFirstResponder];
    }
    if (textField == self.elementEnd) {
        [textField resignFirstResponder];
    }
    return YES;
}
@end
