//
//  Card.m
//  DeckOfOneCard-Obj-C
//
//  Created by Lewis Jones on 16/02/2019.
//  Copyright © 2019 Rodrigo. All rights reserved.
//

#import "Card.h"

@implementation Card

- (instancetype)initWithSuit:(NSString *)suit image:(NSString *)image
{
    if (self = [super init]) {
        _suit = [suit copy];
        _image = [image copy];
    }
    return self;
}
    - (instancetype)initWithDictionary:(NSDictionary *)dictionary
    {
        NSString *suit = dictionary[[Card suitKey]];
        NSString *image = dictionary[[Card imageKey]];
        
        return [self initWithSuit:suit image:image];
        
    }
+ (NSString *)suitKey
{
    return @"suit";
}

+ (NSString *)imageKey
{
    return @"image";
}


@end
