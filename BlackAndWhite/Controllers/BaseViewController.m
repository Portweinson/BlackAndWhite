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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(handleApplicationWillEnterForeground:)
                                name:UIApplicationWillEnterForegroundNotification
                              object:nil];
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(handleApplicationDidEnterBackground:)
                                name:UIApplicationDidEnterBackgroundNotification
                              object:nil];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [NOTIFICATION_CENTER removeObserver:self
                                   name:UIApplicationWillEnterForegroundNotification
                                 object:nil];
    [NOTIFICATION_CENTER removeObserver:self
                                   name:UIApplicationDidEnterBackgroundNotification
                                 object:nil];
    
    [super viewDidDisappear:animated];
}


#pragma mark - Memory management


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}


#pragma mark - Notification Handlers

- (void)handleApplicationWillEnterForeground:(NSNotification *)notification
{
    
}

- (void)handleApplicationDidEnterBackground:(NSNotification *)notification
{
    
}

@end
