//
//  DetailViewController.h
//  StretchyHeaders
//
//  Created by Jeffrey C Rosenthal on 4/14/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

