//
//  Dice.h
//  LotAppFirst
//
//  Created by Shuichiro KUDAKA on 2014/01/14.
//  Copyright (c) 2014年 ie-ModelingAndDesign team-J. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Dice : UIViewController <UITextFieldDelegate> {
    NSMutableArray *ResultList;
    //NSMutableArray *array1;
    int RandomNumbers;
    int RandomNumbers2;
    int RandomNumbers3;
    int RandomNumbers4;
    int RandomNumbers5;
    int RandomNumbers6;
    int kazu;
    int c;
    int c1;
    
    NSArray *Coin;
    int RandomNumbers7;
    int RandomNumbers8;
    int RandomNumbers9;
    int RandomNumbers10;
    int RandomNumbers11;
    int kazu2;

    __weak IBOutlet UILabel *show;
    __weak IBOutlet UILabel *two;
    __weak IBOutlet UILabel *san;
    __weak IBOutlet UILabel *yon;
    __weak IBOutlet UILabel *go;
    __weak IBOutlet UILabel *six;
    __weak IBOutlet UILabel *kosuu;
    
    __weak IBOutlet UILabel *show2;
    __weak IBOutlet UILabel *two2;
    __weak IBOutlet UILabel *san2;
    __weak IBOutlet UILabel *yon2;
    __weak IBOutlet UILabel *go2;
    __weak IBOutlet UILabel *kosuu2;
}
@property (weak, nonatomic) IBOutlet UITextField *sided;
@property (copy,nonatomic) NSString *userName;
- (IBAction)makedice:(id)sender;
- (IBAction)ShakeDice:(id)sender;
- (IBAction)kosuu:(id)sender;

- (IBAction)shakeCoin:(id)sender;
- (IBAction)kosuu2:(id)sender;

@end
