//
//  MoreViewController.m
//  PlanningPoker
//
//  Created by Panudate Vasinwattana on 5/31/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "Reachability.h"

#import "MoreViewController.h"
#import "MoreCardViewController.h"
#import "AboutOpendreamViewController.h"
#import "AboutScrumViewController.h"


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
    self.title = @"About";
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

- (IBAction)gotoAboutOpendreamPage:(UIButton *)aboutOpendream {
    
    Reachability* internetReachable = [Reachability reachabilityForInternetConnection];
    [internetReachable startNotifier];

    NetworkStatus internetStatus = [internetReachable currentReachabilityStatus];
    
    if (internetStatus == NotReachable) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"No Internet connection" message:@"Application required internet connection.." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
        return;
    }
    
    AboutOpendreamViewController *aboutOpendreamViewController = [[AboutOpendreamViewController alloc] initWithNibName:@"AboutOpendreamViewController" bundle:nil];
    [self.navigationController pushViewController:aboutOpendreamViewController animated:YES];

}

- (IBAction)gotoAboutScrumPage:(UIButton *)aboutScrum {
    
    
    Reachability* internetReachable = [Reachability reachabilityForInternetConnection];
    [internetReachable startNotifier];
    
    NetworkStatus internetStatus = [internetReachable currentReachabilityStatus];
    
    if (internetStatus == NotReachable) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"No Internet connection" message:@"Application required internet connection.." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        
        return;
    }

    AboutScrumViewController *aboutScrumViewController = [[AboutScrumViewController alloc] initWithNibName:@"AboutScrumViewController" bundle:nil];
    [self.navigationController pushViewController:aboutScrumViewController animated:YES];
    
}

@end
