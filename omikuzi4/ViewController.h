//
//  ViewController.h
//  omikuzi3
//
//  Created by Keito GIBO on 2013/11/14.
//  Copyright (c) 2013年 Keito GIBO. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    NSArray *list;
    int num;
    __weak IBOutlet UILabel *result;
}
- (IBAction)push:(id)sender;

@end
