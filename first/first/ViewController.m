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
- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)changeGreeting:(id)sender {
    //ボタンを押した回数をカウント
    self.countButton = self.countButton+1;
    //入力した文字をuserNameに入れる
    self.userName = self.textField.text;
    //入力1回目のときの動作。エラーを消すために
    if(self.countButton == 1){
    _hairetu = [NSMutableArray arrayWithObjects:nil];
    [_hairetu insertObject:self.userName atIndex:0];
    }
    //配列に値を格納
    [_hairetu insertObject:self.userName atIndex:self.countButton];
    //これは意味ないであろう
    if ([_hairetu[0] length] == 0) {
        _hairetu[0] = @"Word";
    }
    //入力回数を出力
    self.label.text = [NSString stringWithFormat:@"入力%d回",self.countButton];
}






    //出力ボタンを押したときの動作
- (IBAction)Output:(id)sender {
    //ボタンを押した回数からランダムで値をとる
    int rand = random()%self.countButton+1;
    //配列の中のランダムで選んだ位置の要素をとる
    NSString *greeting = [[NSString alloc] initWithFormat:@"%@",_hairetu[rand]];
    //ランダムで選んだ要素を出力
    self.label.text = greeting;
}



- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

//配列内の要素をシャッフル
- (IBAction)Shuffle:(id)sender {
}


@end
