//
//  ZZZViewController.m
//  Egghead
//
//  Created by _Zach on 4/19/14.
//  Copyright (c) 2014 Compoucher. All rights reserved.
//

#import "ZZZViewController.h"
#import "ZZZLandscapeView.h"
#import <TTCounterLabel.h>
#import <FXBlurView.h>

@interface ZZZViewController ()

@property(strong, nonatomic)FXBlurView *overlay;

@end

@implementation ZZZViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.counterLabel.countDirection = kCountDirectionUp;
    self.counterLabel.regularFont = [UIFont fontWithName:@"Menlo-Regular" size:29];
    self.counterLabel.boldFont = [UIFont fontWithName:@"Menlo-Bold" size:29];
    [self.counterLabel updateApperance];
    NSLog(@"self view is %@", self.view);
    
    [(ZZZLandscapeView *)self.view selectBackground];
    [self showOverlay];
    //[self populateWithEggs:self.view];
}

- (void)showOverlay {
    self.overlay = [[FXBlurView alloc] initWithFrame:self.view.bounds];
    self.overlay.blurEnabled = YES;
    self.overlay.tintColor = [UIColor blackColor];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTranslatesAutoresizingMaskIntoConstraints:NO];
    button.backgroundColor = [UIColor colorWithRed:0.61 green:0.61 blue:0.95 alpha:1.0];
    button.layer.cornerRadius = 5;
    [button.titleLabel setFont:[UIFont fontWithName:@"Chalkduster" size:33]];
    [button addTarget:self action:@selector(startGame) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Start Hunting!" forState:UIControlStateNormal];
    
    [self.overlay addSubview:button];
   
    NSLayoutConstraint *xCenterConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.overlay attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0];
    [self.overlay addConstraint:xCenterConstraint];
    
    NSLayoutConstraint *yCenterConstraint = [NSLayoutConstraint constraintWithItem:button attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.overlay attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0];
    [self.overlay addConstraint:yCenterConstraint];
    
    [self.view addSubview:self.overlay];
}

- (void)startGame {
    [self.overlay removeFromSuperview];
    [self.counterLabel start];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
