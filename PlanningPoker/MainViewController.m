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
@synthesize backCardContainer = _backCardContainer;
@synthesize cardIsOpen = _cardIsOpen;
@synthesize currentPoint = _currentPoint;
@synthesize currentBigPoint = _currentBigPoint;


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
    self.currentBigPoint = self.playCard.center;
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

    self.currentCard = card.tag;
    
    NSString *cardName = [NSString stringWithFormat:@"bigcard-%d.png", self.currentCard];
    UIImage *cardImage = [UIImage imageNamed:cardName];
    [self.playCard setImage:cardImage forState:UIControlStateNormal];
    
    
    self.currentPoint = card.center;
    
    [self.playCard setCenter:card.center];
    self.playCard.transform = CGAffineTransformMakeScale(0.28, 0.28);
    
    
    self.playCard.hidden = NO;

    [UIButton animateWithDuration:0.3 animations:^{
        self.playCard.transform = CGAffineTransformMakeScale(1, 1);
        [self.playCard setCenter:self.currentBigPoint];
        [self.view bringSubviewToFront:self.backCardContainer];
    }];
        
    self.cardIsOpen = NO;

}

- (IBAction)showCard:(UIButton *)card {
    
    [UIButton animateWithDuration:0.3 animations:^{
        self.playCard.transform = CGAffineTransformMakeScale(0.28, 0.28);
        [self.playCard setCenter:self.currentPoint];
    } completion:^(BOOL finished) {
        [self.view bringSubviewToFront:self.cardContainer];
    }];

}

- (IBAction)gotoMorePage:(UIButton *)more {
    MoreViewController *moreViewController = [[MoreViewController alloc] initWithNibName:@"MoreViewController" bundle:nil];
    [self.navigationController pushViewController:moreViewController animated:NO];
}


@end
