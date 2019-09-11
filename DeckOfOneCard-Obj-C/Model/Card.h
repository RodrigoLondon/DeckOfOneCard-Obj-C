//
//  Card.h
//  DeckOfOneCard-Obj-C
//
//  Created by Lewis Jones on 16/02/2019.
//  Copyright © 2019 Rodrigo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property (nonatomic, copy, readonly) NSString *suit;
@property (nonatomic, copy, readonly) NSString *image;
@property (nonatomic, copy, readonly) NSDictionary *dictionary;

- (instancetype)initWithSuit:(NSString *)suit image:(NSString *)image;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end

NS_ASSUME_NONNULL_END
