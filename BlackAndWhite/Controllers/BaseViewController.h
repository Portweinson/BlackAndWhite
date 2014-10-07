//
//  BaseViewController.h
//  BlackAndWhite
//
//  Created by Вячеслав Ембатуров on 03.10.14.
//  Copyright (c) 2014 Вячеслав Ембатуров. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BAWCommonMacros.h"

@interface BaseViewController : UIViewController

- (void)handleApplicationWillEnterForeground:(NSNotification *)notification;
- (void)handleApplicationDidEnterBackground:(NSNotification *)notification;

@end
