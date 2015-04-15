//
//  NewsItem.h
//  StretchyHeaders
//
//  Created by Jeffrey C Rosenthal on 4/14/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, Categories) {World, Americas, Europe, MiddleEast, Africa, AsiaPacific};
@interface NewsItem : NSObject
@property (strong, nonatomic)NSString *headline;
@property (assign, nonatomic)Categories category;
+(NSMutableArray *)pileOfNews;
@end
