//
//  SerialLot.h
//  LotAppFirst
//
//  Created by Shuichiro KUDAKA on 2014/01/15.
//  Copyright (c) 2014年 ie-ModelingAndDesign team-J. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SerialLot : UIViewController {
    int i;
    int arrayIndex;
    int asciiCode;
    NSMutableArray *lotElement;
    __weak IBOutlet UILabel *outputElement;
}
- (IBAction)makeArray:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *elementStart;
@property (weak, nonatomic) IBOutlet UITextField *elementEnd;
- (IBAction)castLots:(id)sender;

@end
