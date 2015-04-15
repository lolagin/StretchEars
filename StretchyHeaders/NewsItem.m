//
//  NewsItem.m
//  StretchyHeaders
//
//  Created by Jeffrey C Rosenthal on 4/14/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "NewsItem.h"


@implementation NewsItem

+(instancetype)initWithHeadline:(NSString *)headline andCategory:(Categories)category{
    NewsItem *whatever = [[NewsItem alloc] init];
        whatever.category = category;
        whatever.headline = headline;
    return whatever;
}



+(NSMutableArray *)pileOfNews {
    NSMutableArray *newsArray = [NSMutableArray array];
    [newsArray addObject:[NewsItem initWithHeadline:@"America Officially Becomes Idiocracy, Eats Canada" andCategory:Americas]];
    [newsArray addObject:[NewsItem initWithHeadline:@"UN Launches War On Selfies" andCategory:World]];
        [newsArray addObject:[NewsItem initWithHeadline:@"Clandestine Production of Cheese and It's Effects on the Middle Classes" andCategory:Europe]];
        [newsArray addObject:[NewsItem initWithHeadline:@"THIS ARTICLE WAS REMOVED BY FEDERAL MANDATE" andCategory:MiddleEast]];
        [newsArray addObject:[NewsItem initWithHeadline:@"DeBeers Diamond Clan Discovered to be Influenced by Sentient Diamond of Limited Intelligence" andCategory:Africa]];
        [newsArray addObject:[NewsItem initWithHeadline:@"it's kinda hard to make up something crazy about asia. everything crazy has probably already happened. In east Asia, madness forms a status quo... " andCategory:AsiaPacific]];
    
    return newsArray;
    
    
    
}



@end
