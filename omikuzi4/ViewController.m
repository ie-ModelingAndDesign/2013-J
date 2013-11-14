//
//  ViewController.m
//  omikuzi3
//
//  Created by Keito GIBO on 2013/11/14.
//  Copyright (c) 2013年 Keito GIBO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    list = [NSArray arrayWithObjects:@"大吉",@"中吉",@"吉",@"凶", nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)push:(id)sender {
    num = arc4random() % 4;
    result.text = [NSString stringWithFormat:@"%@",[list objectAtIndex:num]];
}
@end
