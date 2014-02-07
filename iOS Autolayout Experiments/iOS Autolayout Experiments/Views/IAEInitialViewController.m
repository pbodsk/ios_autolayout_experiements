//
//  IAEInitialViewController.m
//  iOS Autolayout Experiments
//
//  Created by Peter Bødskov on 04/02/14.
//  Copyright (c) 2014 Peter Bødskov. All rights reserved.
//

#import "IAEInitialViewController.h"

@interface IAEInitialViewController ()

@end

@implementation IAEInitialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title = @"Initial View Controller";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.bottomButton attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0.0]];
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:self.bottomButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0.0]];

/*    NSDictionary *views = @{@"bottomButton": self.bottomButton};
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"h:|[bottomButton]|" options:0 metrics:nil views:views];
    [self.view addConstraints:constraints];
 */

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
