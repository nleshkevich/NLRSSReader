//
//  TableTableViewController.m
//  NLRSSReader
//
//  Created by Nick L on 08.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "TableViewController.h"
#import "ItemTableViewCell.h"
#import "ItemCell.h"
#import "Item+Init.h"
#import "Constants.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (instancetype)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        
        //TODO: paste custom init code here
    }
    
    return self;
}



- (void)viewDidLoad {
    [super viewDidLoad];
    
    //TODO: Set Observer NSNotificationCenter
    
    [self.tableView setBackgroundColor:[UIColor grayColor]];
    
    //Set offset for table
//    CGPointMake(<#CGFloat x#>, <#CGFloat y#>)
    [self.tableView setContentOffset:CGPointMake(50, 50)];
    
    //Register custom table cell
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([ItemCell class]) bundle:nil]
                        forCellReuseIdentifier:NSStringFromClass([ItemCell class])];
    

}

- (void)viewWillDisappear:(BOOL)animated
{
    if (![[self.navigationController viewControllers] containsObject:self]) {
        
        NSLog(@"Table View Controller: viewWillDisappear \n %c", [[self.navigationController viewControllers] containsObject:self]);
        //TODO: Remove Observer from NSNotificationCenter here
    }
    
    if ([self isMovingFromParentViewController]) {
        
         NSLog(@"Table View Controller: viewWillDisappear \n %hhd", [self isBeingDismissed]);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 320;
}

- (void)configCustomCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    //TODO: Get data(Items) from storage and configure cell
    //Test data
    Item *item = [Item itemWithTitle:@"В России образовался новый ВИЧ"
                                link:@"http://42.tut.by/525489?utm_campaign=news-feed&#x26;utm_medium=rss&#x26;utm_source=rss-news"
                         description:@"Опасный вирус иммунодефицита человека образовался в России из смешения ранее доминировавшего в РФ штамма и нового агента, занесенного из Центральной Азии"
                            imageURL:@"http://img.tyt.by/thumbnails/n/it/01/2/medicina_lekarstvo_laboratoriya_bakterii_reuters.jpg"
                                date:@"Tue, 27 Dec 2016 16:15:00 +0300"];
    
    ItemTableViewCell *itemCell = (ItemTableViewCell *)cell;
    [itemCell configureCellWithItem:item];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    ItemTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kTableViewCellIdentifier];
//    if (!cell) {
//        cell = [[ItemTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:kTableViewCellIdentifier];
//    }
//    
//    // Configure the cell...
//    [self configCustomCell:cell atIndexPath:indexPath];
    
    ItemCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ItemCell class])
                                                     forIndexPath:indexPath];
    
    return cell;
}

 - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return kCellHeight;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
