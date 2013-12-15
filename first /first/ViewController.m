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
@synthesize changeGreeting;
@synthesize again;
@synthesize output;
@synthesize userName = _userName;
@synthesize hairetu = _hairetu;
@synthesize countButton;
@synthesize countButton2;
@synthesize c;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
        self.again.hidden = YES;
        self.output.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
  //  self.changeGreeting.hidden = NO;
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)changeGreeting:(id)sender {
    self.output.hidden = NO;
    //ボタンを押した回数をカウント  countButtonの初めが0だったので変更12/5
    //self.countButton = self.countButton+1;
    //入力した文字をuserNameに入れる
    self.userName = self.textField.text;
    //入力1回目のときの動作。エラーを消すために
    if(self.countButton == 0){
    _hairetu = [NSMutableArray arrayWithObjects:nil];
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
    //格納ボタンを非表示にする。 12/15
    self.changeGreeting.hidden = YES;
    //出力ボタン1回目に配列をシャッフル
    if (countButton2 == 0) {
        uint i=0;
        for (i = 0; i < [_hairetu count]; ++i) {
            int m = [_hairetu count] - i;
            int n = arc4random_uniform(m) + i;
            [_hairetu exchangeObjectAtIndex:i withObjectAtIndex:n];
        }
        //配列の最後にendを入れる 12/12
        [_hairetu insertObject:@"end" atIndex:i];
        self.again.hidden = NO;
    }
    //配列の中のランダムで選んだ位置の要素をとる
    NSString *greeting = [[NSString alloc] initWithFormat:@"%@",_hairetu[self.c]];
    //ランダムで選んだ要素を出力
    self.label.text = greeting;
    //12/12 出力している配列の文字列がendでない時のみインクリメントするよう変更
    if([_hairetu count]-1 != self.c){
        self.c = self.c+1;
        self.countButton2 = self.countButton2+1;
    }
}

//もう一度くじをひくボタン 12/12
- (IBAction)again:(id)sender {
    //変数初期か
    self.c = 0;
    self.countButton2 = 0;
    //配列の最後のendを消す
    [_hairetu removeLastObject];
    

    self.again.hidden = YES;
    
    self.label.text = [NSString stringWithFormat:@"もう一回"];
}
//リセットボタンを押したときの動作
- (IBAction)restart:(id)sender {
    _hairetu = [NSMutableArray arrayWithObjects:nil];
    self.c = 0;
    self.countButton2 = 0;
    self.countButton=0;
    self.label.text = [NSString stringWithFormat:@"リセット"];
    //出力ボタンを表示する。　12/15
    self.changeGreeting.hidden = NO;
    self.again.hidden = YES;
    self.output.hidden = YES;
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}

@end
