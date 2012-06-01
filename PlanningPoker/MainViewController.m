//
//  MainViewController.m
//  test
//
//  Created by Panudate Vasinwattana on 5/30/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "MoreViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

@synthesize playCard = _playCard;
@synthesize currentCard = _currentCard;
@synthesize cardContainer = _cardContainer;
@synthesize cardIsOpen = _cardIsOpen;

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
    //UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(selectCard:)];
    
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

- (IBAction)selectCard:(UIButton *)card {
    self.playCard.hidden = NO;
    self.cardContainer.hidden = YES;
    self.currentCard = card.tag;
    self.cardIsOpen = NO;

}

- (IBAction)showCard:(UIButton *)card {
    if (!self.cardIsOpen) {
        NSString *cardName = [NSString stringWithFormat:@"bigcard-%d.png", self.currentCard];
        UIImage *cardImage = [UIImage imageNamed:cardName];
        [self.playCard setImage:cardImage forState:UIControlStateNormal];
        self.cardIsOpen = YES;
    }
    else {
        // Return to select card
        NSLog(@"Return to select card");
        self.cardContainer.hidden = NO;
        self.playCard.hidden = YES;
        UIImage *cardImage = [UIImage imageNamed:@"back-card.png"];
        [self.playCard setImage:cardImage forState:UIControlStateNormal];
    }
}

- (IBAction)gotoMorePage:(UIButton *)more {
    MoreViewController *moreViewController = [[MoreViewController alloc] initWithNibName:@"MoreViewController" bundle:nil];
    [self.navigationController pushViewController:moreViewController animated:NO];
}


@end
