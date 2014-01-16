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
    outputElement.text = [NSString stringWithFormat:@"？"];
    arrayIndex = 0;
    int j = 0;
    [lotElement removeAllObjects];
    if ([self.elementStart.text characterAtIndex:0] > [self.elementEnd.text characterAtIndex:0]) {
        // 暫定的に、メッセージをラベルに表示
        outputElement.text = [NSString stringWithFormat:@"入力値が不正です！"];
        return;
    }
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
@end
