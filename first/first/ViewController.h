//
//  ViewController.h
//  first
//
//  Created by Keito GIBO on 2013/11/25.
//  Copyright (c) 2013年 Keito GIBO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>
- (IBAction)changeGreeting:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (copy,nonatomic) NSString *userName;
@end
