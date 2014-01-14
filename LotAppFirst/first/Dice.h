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
    __weak IBOutlet UILabel *show;
}

- (IBAction)ShakeDice:(id)sender;
@end
