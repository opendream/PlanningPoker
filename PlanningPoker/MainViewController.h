//
//  MainViewController.h
//  test
//
//  Created by Panudate Vasinwattana on 5/30/55 BE.
//  Copyright (c) 2555 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface MainViewController : UIViewController {
}

@property (strong, nonatomic) IBOutlet UIButton *playCard;
@property (strong, nonatomic) IBOutlet UIView *cardContainer;
@property int currentCard;
@property BOOL cardIsOpen;

- (IBAction)selectCard:(UIButton *)card;
- (IBAction)showCard:(UIButton *)card;
- (IBAction)gotoMorePage:(UIButton *)more;


@end
