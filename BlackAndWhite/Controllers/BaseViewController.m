//
//  BaseViewController.m
//  BlackAndWhite
//
//  Created by Вячеслав Ембатуров on 03.10.14.
//  Copyright (c) 2014 Вячеслав Ембатуров. All rights reserved.
//

#import "BaseViewController.h"
#import "BAWCommonMacros.h"


@interface BaseViewController ()

@end


@implementation BaseViewController


#pragma mark - View Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(applicationWillEnterForeground:)
                                name:UIApplicationWillEnterForegroundNotification
                              object:nil];
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(applicationDidEnterBackground:)
                                name:UIApplicationDidEnterBackgroundNotification
                              object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

@end
