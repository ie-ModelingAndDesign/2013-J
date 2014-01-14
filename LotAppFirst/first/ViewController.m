//
//  ViewController.m
//  first
//
//  Created by Keito GIBO on 2013/11/25.
//  Copyright (c) 2013年 ie-ModelingAndDesign team-J. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
//変数の変化を共有的な
@synthesize changeGreeting;
@synthesize again;
@synthesize output;
@synthesize hideResult;
@synthesize userName = _userName;
@synthesize hairetu = _hairetu;  //入力値を記憶
@synthesize countButton;         //入力回数
@synthesize countButton2;        //配列の出力要素指定

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _hairetu = [NSMutableArray arrayWithObjects:nil];
    self.again.hidden = YES;
    self.output.hidden = YES;
    self.hideResult.hidden = YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (IBAction)changeGreeting:(id)sender {
    self.output.hidden = NO;
    self.hideResult.hidden = NO;
    //入力した文字をuserNameに入れる
    self.userName = self.textField.text;
    //配列に要素を追加
    [_hairetu addObject:self.userName];
    //ボタンを押した回数をカウント
    self.countButton = self.countButton +1;
    //入力回数を出力
    self.label.text = [NSString stringWithFormat:@"入力%d回",self.countButton];
}

    //出力ボタンを押したときの動作
- (IBAction)Output:(id)sender {
    //格納ボタンを非表示にする。
    self.changeGreeting.hidden = YES;
    self.hideResult.hidden = NO;
    //出力ボタン1回目に配列をシャッフル
    if (countButton2 == 0) {
        uint i=0;
        for (i = 0; i < [_hairetu count]; ++i) {
            int m = [_hairetu count] - i;
            int n = arc4random_uniform(m) + i;
            [_hairetu exchangeObjectAtIndex:i withObjectAtIndex:n];
        }
        self.again.hidden = NO;
    }
    
    if ([_hairetu count] > self.countButton2) {
        //シャッフル後の配列から、順に要素の値を取得
        NSString *greeting = [[NSString alloc] initWithFormat:@"%@",_hairetu[self.countButton2]];
        //取得した要素を出力
        self.label.text = greeting;
        //出力している配列の要素が最後でない時のみインクリメント
        self.countButton2 = self.countButton2+1;
    } else {
        NSString *greeting = @"end";
        self.label.text = greeting;
        self.hideResult.hidden = YES;
    }
}

//もう一度くじをひくボタン
- (IBAction)again:(id)sender {
    //変数初期化
    self.countButton2 = 0;
    
    self.again.hidden = YES;
    
    self.label.text = [NSString stringWithFormat:@"もう一回"];
}

//リセット(クリア)ボタンを押したときの動作
- (IBAction)restart:(id)sender {
    [_hairetu removeAllObjects];
    self.countButton2 = 0;
    self.countButton=0;
    self.label.text = [NSString stringWithFormat:@"内容をクリアしました。"];
    //出力ボタンを表示する。
    self.changeGreeting.hidden = NO;
    self.again.hidden = YES;
    self.output.hidden = YES;
    self.hideResult.hidden = YES;
}

//隠すボタン
- (IBAction)hideResult:(id)sender {
    NSString *greeting = @"「出力」を押して";
    self.label.text = greeting;
}


- (BOOL)textFieldShouldReturn:(UITextField *)theTextField {
    if (theTextField == self.textField) {
        [theTextField resignFirstResponder];
    }
    return YES;
}


@end
