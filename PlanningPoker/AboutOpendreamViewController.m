//
//  AboutOpendreamViewController.m
//  PlanningPoker
//
//  Created by Panudate Vasinwattana on 6/1/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "AboutOpendreamViewController.h"

@interface AboutOpendreamViewController ()

@end

@implementation AboutOpendreamViewController

@synthesize aboutOpendreamWeb = _aboutOpendreamWeb;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    
    self.title = @"About Opendream";
    
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://opendream.co.th/about"]];
    [self.aboutOpendreamWeb loadRequest:requestObj];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
