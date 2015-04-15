//
//  MasterViewController.m
//  StretchyHeaders
//
//  Created by Jeffrey C Rosenthal on 4/14/15.
//  Copyright (c) 2015 Jeffreycorp. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "HeadlineTableViewCell.h"
@interface MasterViewController ()

@property (strong, nonatomic) NSMutableArray *objects;
@property (strong, nonatomic) HeadlineTableViewCell *cell;
@property (strong, nonatomic) HeadlineTableViewCell *prototypeCell;

-(void)configureCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)viewDidLoad {
    
    
    UINib *nib = [UINib nibWithNibName:@"HeadlineTableViewCell" bundle:nil];
    [self.tableView registerNib:nib forCellReuseIdentifier:@"HeadlineCell"];
    self.tableView.estimatedRowHeight = 60.0;
    
    [super viewDidLoad];
    self.tableView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"buildingresize"]];
    }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (void)insertNewObject:(id)sender {
//    if (!self.objects) {
//        self.objects = [[NSMutableArray alloc] init];
//    }
//    [self.objects insertObject:[NSDate date] atIndex:0];
//    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];
//    [self.tableView insertRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
//}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        NSDate *object = self.objects[indexPath.row];
        [[segue destinationViewController] setDetailItem:object];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.objects count];
}

- (HeadlineTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    HeadlineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"HeadlineCell" forIndexPath:indexPath];
    [self configureCell:cell forRowAtIndexPath:indexPath];
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [self configureCell:self.prototypeCell forRowAtIndexPath:indexPath];
//    [self.prototypeCell layoutIfNeeded];
//    CGSize size = [self.prototypeCell.contentView systemLayoutSizeFittingSize:UILayoutFittingCompressedSize];
//    return size.height+1;
//    }


-(void)configureCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell isKindOfClass:[HeadlineTableViewCell class]])
    {
        HeadlineTableViewCell *textCell = (HeadlineTableViewCell *)cell;
        NewsItem *specificItem = ((NewsItem *)self.objects[indexPath.row]);
        [textCell setArticleCategoryString:specificItem.category];
        textCell.headline.text = specificItem.headline;
    }
}



- (HeadlineTableViewCell *)prototypeCell
{
    if (!_prototypeCell)
    {
        _prototypeCell = [self.tableView dequeueReusableCellWithIdentifier:@"HeadlineCell"];
    }
    return _prototypeCell;
}


-(NSMutableArray *)objects{
    if (!_objects){
        _objects = [NewsItem pileOfNews];
    }
    return _objects;
}
@end
