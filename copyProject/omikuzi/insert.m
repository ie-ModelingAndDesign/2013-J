//
//  insert.m
//  omikuzi
//
//  Created by akira YONAHA on 2013/12/02.
//  Copyright (c) 2013年 akira YONAHA. All rights reserved.
//

#import "insert.h"

@interface insert ()

@end

@implementation insert

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)insert:(id)sender {
    [List addObject:@"moziretu"];
    //入力ボタン
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
