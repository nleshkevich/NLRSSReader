//
//  TableTableViewController.m
//  NLRSSReader
//
//  Created by Nick L on 08.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "TableViewController.h"
//#import "SegmentViewController.h"

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
    
//    [self.view setBackgroundColor:[UIColor redColor]];

    
        // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
//    UIBarButtonItem *nextVCBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAction
//                                                                                     target:self
//                                                                                     action:@selector(nextVC)];
//    
//    self.navigationItem.rightBarButtonItem = nextVCBarButton;


}

//- (void)nextVC
//{
//    SegmentViewController *segVC = [[SegmentViewController alloc] init];
//    
//    [self.navigationController pushViewController:segVC animated:YES];
//
//}

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
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return 20;
}

- (void)configCustomCell:(UITableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath
{
    //TODO: Get data(Items) from storage and configure cell

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"TableCellIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
    }
    
    // Configure the cell...
    [self configCustomCell:cell atIndexPath:indexPath];
    
    return cell;
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
