//
//  ViewController.h
//  omikuzi
//
//  Created by akira YONAHA on 2013/11/07.
//  Copyright (c) 2013年 akira YONAHA. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface ViewController : UIViewController{
    NSArray *omikujiList;
    int rNum;
    __weak IBOutlet UILabel *result;
}

- (IBAction)omikuji:(id)sender;
@end

