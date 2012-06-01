//
//  MoreCardViewController.m
//  PlanningPoker
//
//  Created by Panudate Vasinwattana on 5/31/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "MoreCardViewController.h"

@interface MoreCardViewController ()

@end

@implementation MoreCardViewController

@synthesize scrollView = _scrollView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Request json of card collections
        
        //NSURLRequest *theRequest = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com/"] 
        //        cachePolicy:NSURLRequestUseProtocolCachePolicy timeoutInterval:60.0];
        
        // Render card collections
        NSInteger viewcount= 2; 
        for (int i = 0; i <viewcount; i++) { 
            CGFloat x = i * self.view.frame.size.width; 
            UIView *view = [[UIView alloc] initWithFrame:CGRectMake(x, 0,self.view.frame.size.width, self .view.frame.size.height)];      
            view.backgroundColor = [UIColor greenColor];
            
            // TODO: add card view
            
            [view setCenter:CGPointMake(x + self.view.frame.size.width/2, view.center.y)];
            [self.scrollView addSubview:view];
        }
        self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width * viewcount, self.view.frame.size.height ); 
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

@end
