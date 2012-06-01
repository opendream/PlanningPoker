//
//  MoreViewController.m
//  PlanningPoker
//
//  Created by Panudate Vasinwattana on 5/31/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "MoreViewController.h"
#import "MoreCardViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)backtoPlayPage:(UIButton *)back {
    [self.navigationController popViewControllerAnimated:NO];
}

- (IBAction)gotoMoreCardPage:(UIButton *)moreCard {
    MoreCardViewController *moreCardViewController = [[MoreCardViewController alloc] initWithNibName:@"MoreCardViewController" bundle:nil];
    [self.navigationController pushViewController:moreCardViewController animated:YES];
}

@end
