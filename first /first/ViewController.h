//
//  ViewController.h
//  first
//
//  Created by Keito GIBO on 2013/11/25.
//  Copyright (c) 2013年 Keito GIBO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>{
    IBOutlet UIButton *chanGreeting;
    IBOutlet UIButton *again;
    IBOutlet UIButton *output;
}
@property (retain,nonatomic) IBOutlet UIButton *changeGreeting;
@property (retain,nonatomic) IBOutlet UIButton *again;
@property (retain,nonatomic) IBOutlet UIButton *output;
- (IBAction)changeGreeting:(id)sender;
- (IBAction)Output:(id)sender;
- (IBAction)again:(id)sender;
- (IBAction)restart:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (copy,nonatomic) NSString *userName;
@property (copy,nonatomic) NSMutableArray *hairetu;
@property (nonatomic, assign) int countButton;
@property (nonatomic, assign) int countButton2;
@property (nonatomic, assign) int c;
@end
