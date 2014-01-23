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
    
    if ([self isDigit:self.elementStart.text]) {
        if ([self isDigit:self.elementEnd.text]) {
            integralNumber = YES;
        } else {
            integralNumber = NO;
        }
    } else {
        integralNumber = NO;
    }
    
    if (integralNumber == YES) {
        if ([self.elementStart.text intValue] > [self.elementEnd.text intValue]) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"入力値が不正です。！" message:@"範囲指定に誤りがあります。" delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
            [alert show];
            return;
        }
    } else {
        if ([self.elementStart.text characterAtIndex:0] > [self.elementEnd.text characterAtIndex:0]) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"入力値が不正です。！" message:@"範囲指定に誤りがあります。" delegate:self cancelButtonTitle:@"確認" otherButtonTitles:nil];
            [alert show];
            return;
        }
    }
    
    outputElement.text = [NSString stringWithFormat:@"？"];
    arrayIndex = 0;
    int j = 0;
    [lotElement removeAllObjects];
    
    if (integralNumber == YES) {
        i = [self.elementEnd.text intValue] - [self.elementStart.text intValue];
        for (numberCount = [self.elementStart.text intValue]; j <= i; j++) {
            [lotElement addObject:[NSString stringWithFormat:@"%d", numberCount]];
            numberCount = ++numberCount;
        }
        
        self.elementStart.text =  [NSString stringWithFormat:@"%d",[self.elementStart.text intValue]];
        self.elementEnd.text =  [NSString stringWithFormat:@"%d",[self.elementEnd.text intValue]];
    } else {
        i = [self.elementEnd.text characterAtIndex:0] - [self.elementStart.text characterAtIndex:0];
        for (asciiCode = [self.elementStart.text characterAtIndex:0]; j <= i; j++) {
            [lotElement addObject:[NSString stringWithFormat:@"%c", asciiCode]];
            asciiCode = ++asciiCode;
        }
        
        self.elementStart.text =  [NSString stringWithFormat:@"%c",[self.elementStart.text characterAtIndex:0]];
        self.elementEnd.text =  [NSString stringWithFormat:@"%c",[self.elementEnd.text characterAtIndex:0]];
    }
    
    int m;
    for (m = 0; m < [lotElement count]; ++m) {
        int l = [lotElement count] - m;
        int n = arc4random_uniform(l) + m;
        [lotElement exchangeObjectAtIndex:m withObjectAtIndex:n];
    }
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


// 入力された文字は数字？
- (BOOL)isDigit:(NSString *)inString
{
    if ([inString length] == 0) {
        return NO;
    }
    NSCharacterSet *digitCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
    NSScanner *aScanner = [NSScanner localizedScannerWithString:inString];
    [aScanner setCharactersToBeSkipped:nil];
    [aScanner scanCharactersFromSet:digitCharSet intoString:NULL];
    return [aScanner isAtEnd];
}

// キーボードの設定
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
