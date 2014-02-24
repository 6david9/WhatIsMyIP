//
//  CBViewController.h
//  WhatIsMyIP
//
//  Created by ly on 14-2-24.
//  Copyright (c) 2014年 ly. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CBViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *localLabel;

@property (weak, nonatomic) IBOutlet UILabel *remoteLabel;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *localActivityIndicator;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *remoteActivityIndicator;

@end
