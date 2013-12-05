//
//  ViewController.m
//  first
//
//  Created by Keito GIBO on 2013/11/25.
//  Copyright (c) 2013年 Keito GIBO. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//変数の変化を共有的な
@synthesize userName = _userName;
@synthesize hairetu = _hairetu;
@synthesize countButton;
@synthesize countButton2;
@synthesize c;
- (void)viewDidLoad
{
    [super viewDidLoad];
    _hairetu = [NSMutableArray arrayWithObjects:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    //ボタンを押した回数をカウント  countButtonの初めが0だったので変更12/5
    //self.countButton = self.countButton+1;
    //入力した文字をuserNameに入れる
    self.userName = self.textField.text;
    //入力1回目のときの動作。エラーを消すために
    if(self.countButton == 0){
    //_hairetu = [NSMutableArray arrayWithObjects:nil];
    //[_hairetu insertObject:self.userName atIndex:0];
    }
    //配列に値を格納
    [_hairetu insertObject:self.userName atIndex:self.countButton];
    //これは意味ないであろう
    if ([_hairetu[0] length] == 0) {
        _hairetu[0] = @"Word";
    }
    //ボタンを押した回数をカウント12/5
    self.countButton = self.countButton+1;
    //入力回数を出力
    self.label.text = [NSString stringWithFormat:@"入力%d回",self.countButton];
}
    //出力ボタンを押したときの動作
- (IBAction)Output:(id)sender {
    if (countButton2 == 0) {
        for (uint i = 0; i < [_hairetu count]; ++i) {
            int m = [_hairetu count] - i;
            int n = arc4random_uniform(m) + i;
            [_hairetu exchangeObjectAtIndex:i withObjectAtIndex:n];
        }
    }
    //ボタンを押した回数からランダムで値をとる
    //int rand = random()%self.countButton;
    //配列の中のランダムで選んだ位置の要素をとる
    NSString *greeting = [[NSString alloc] initWithFormat:@"%@",_hairetu[self.c]];
    //ランダムで選んだ要素を出力
    self.label.text = greeting;
    self.c = self.c+1;
    self.countButton2 = self.countButton2+1;
}

- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}
@end
