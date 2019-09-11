//
//  CardController.h
//  DeckOfOneCard-Obj-C
//
//  Created by Lewis Jones on 16/02/2019.
//  Copyright © 2019 Rodrigo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class Card;



@interface CardController : NSObject

+ (instancetype)shared;

- (void)drawNewCard:(NSInteger)numberOfCards completion:(void(^) (NSArray<Card *> *cards, NSError * error))completion;

- (void)fetchCardImage:(Card *)card completion:(void(^) (UIImage *image, NSError *error))completion;

@end

NS_ASSUME_NONNULL_END
