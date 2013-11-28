//
//  ViewController.m
//  omikuzi
//
//  Created by akira YONAHA on 2013/11/07.
//  Copyright (c) 2013年 akira YONAHA. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    omikujiList = [NSArray arrayWithObjects:@"大吉！",@"中吉",@"小吉",@"凶", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)omikuji:(id)sender {
    rNum = arc4random() % 4;
    result.text = [NSString stringWithFormat: @"%@",[omikujiList objectAtIndex:rNum]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
