//
//  CBViewController.m
//  WhatIsMyIP
//
//  Created by ly on 14-2-24.
//  Copyright (c) 2014年 ly. All rights reserved.
//

#import "CBViewController.h"
#import "IPDetector.h"

@interface CBViewController ()

@end

@implementation CBViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [self performSelector:@selector(refreshIPAddress:) withObject:nil afterDelay:0.0];
}

#pragma mark - Actions
- (IBAction)refreshIPAddress:(UIButton *)sender
{
    [self.localActivityIndicator startAnimating];
    [IPDetector getLANIPAddressWithCompletion:^(NSString *IPAddress) {
        self.localLabel.text = IPAddress;
        [self.localActivityIndicator stopAnimating];
    }];
    
    [self.remoteActivityIndicator startAnimating];
    [IPDetector getWANIPAddressWithCompletion:^(NSString *IPAddress) {
        self.remoteLabel.text = IPAddress;
        [self.remoteActivityIndicator stopAnimating];
    }];
}

@end
