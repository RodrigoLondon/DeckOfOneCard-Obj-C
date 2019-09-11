//
//  CardViewController.m
//  DeckOfOneCard-Obj-C
//
//  Created by Lewis Jones on 16/02/2019.
//  Copyright © 2019 Rodrigo. All rights reserved.
//

#import "CardViewController.h"
#import "CardController.h"
#import "Card.h"

@interface CardViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *cardImageView;
@property (weak, nonatomic) IBOutlet UILabel *suitLabel;

@end

@implementation CardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (IBAction)drawCardButtonTapped:(id)sender {
    [self updateViews];
}

-(void)updateViews
{
    [[CardController shared] drawNewCard:1 completion:^(NSArray<Card *> *  cards, NSError *error) {
        if (error) {
            NSLog(@"Error getting photo references for %@ on %@:", cards, error);
            return;
        }
        Card *card = [cards objectAtIndex:0];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            self.suitLabel.text = card.suit;
        });
        [[CardController shared] fetchCardImage:card completion:^(UIImage *image, NSError *error) {
            
            dispatch_async(dispatch_get_main_queue(), ^{
                self.cardImageView.image = image;
            });
        }];
        
    }];
}



@end
