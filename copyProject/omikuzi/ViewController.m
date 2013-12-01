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

}

- (IBAction)omikuji:(id)sender {
    rNum = arc4random() % 4;
    result.text = [NSString stringWithFormat: @"%@",[List objectAtIndex:rNum]];
    [List removeObjectAtIndex: (NSUInteger) rNum];
    //くじを引き表示し、引いたくじを配列から削除
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
