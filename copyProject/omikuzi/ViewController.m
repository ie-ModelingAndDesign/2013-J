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
    int i;
    rNum = arc4random() % i;
    //result.text = [NSString stringWithFormat: @"%@",[List objectAtIndex:rNum]];
    //[List removeObjectAtIndex: (NSUInteger) rNum];
    //くじを引き表示し、引いたくじを配列から削除
    
    /*これとか　http://lab.dolice.net/blog/2013/03/14/shuffle-the-array-in-objective-c/
    で配列をシャッフルしてインクリメントしながらボタン押す毎に出力してって配列の最後に　終わり　とか入れればいけそう*/
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
