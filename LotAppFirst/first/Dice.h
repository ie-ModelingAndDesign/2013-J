//
//  Dice.h
//  LotAppFirst
//
//  Created by Shuichiro KUDAKA on 2014/01/14.
//  Copyright (c) 2014年 ie-ModelingAndDesign team-J. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Dice : UIViewController {
    NSArray *ResultList;
    int RandomNumbers;
    int RandomNumbers2;
    int RandomNumbers3;
    int RandomNumbers4;
    int RandomNumbers5;
    int RandomNumbers6;
    int kazu;
    int c;
    __weak IBOutlet UILabel *show;
    __weak IBOutlet UILabel *two;
    __weak IBOutlet UILabel *san;
    __weak IBOutlet UILabel *yon;
    __weak IBOutlet UILabel *go;
    __weak IBOutlet UILabel *six;
    __weak IBOutlet UILabel *kosuu;
}
@property (weak, nonatomic) IBOutlet UITextField *sided;
- (IBAction)makedice:(id)sender;

- (IBAction)ShakeDice:(id)sender;
- (IBAction)kosuu:(id)sender;
@end
