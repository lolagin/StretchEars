//
//  HeadlineTableViewCell.h
//  StretchyHeaders
//
//  Created by Jeffrey C Rosenthal on 4/14/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewsItem.h"
@interface HeadlineTableViewCell : UITableViewCell

-(void)setArticleCategoryString:(Categories)category;
@property (weak, nonatomic) IBOutlet UILabel *headline;
@end
