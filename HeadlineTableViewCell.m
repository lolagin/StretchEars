//
//  HeadlineTableViewCell.m
//  StretchyHeaders
//
//  Created by Jeffrey C Rosenthal on 4/14/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "HeadlineTableViewCell.h"

@interface HeadlineTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *articleCategory;
-(void)setArticleCategoryString:(Categories)category;

@end
@implementation HeadlineTableViewCell




- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setArticleCategoryString:(Categories)category{
    switch (category) {
        case World:
            self.articleCategory.text = @"World";
            self.articleCategory.textColor = [UIColor greenColor];
            break;
        case Americas:
            self.articleCategory.text = @"Americas";
            self.articleCategory.textColor = [UIColor purpleColor];
            break;
        case MiddleEast:
            self.articleCategory.text = @"Middle East";
            self.articleCategory.textColor = [UIColor orangeColor];
            break;
        case Africa:
            self.articleCategory.text = @"Africa";
            self.articleCategory.textColor = [UIColor brownColor];
            break;
        case AsiaPacific:
            self.articleCategory.text = @"Asia Pacific";
            self.articleCategory.textColor = [UIColor yellowColor];
            break;
        case Europe:
            self.articleCategory.text = @"Yourup";
            self.articleCategory.textColor = [UIColor blueColor];
            break;
        default:
            self.articleCategory.text = @"cardiff";
            self.articleCategory.textColor = [UIColor brownColor];
            break;
    }
}


@end