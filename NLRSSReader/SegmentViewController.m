//
//  SegmentViewController.m
//  NLRSSReader
//
//  Created by Nick L on 09.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "SegmentViewController.h"


@interface SegmentViewController ()

@end

@implementation SegmentViewController

@synthesize tableViewController;
@synthesize collectionViewController;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor blueColor]];
    
    segmentedControl = [[UISegmentedControl alloc] initWithItems:@[@"Table", @"Collection"]];
    segmentedControl.frame = CGRectMake(10, 10, 155, 30);
    [segmentedControl addTarget:self action:@selector(segmentedControlValueDidChange:) forControlEvents:UIControlEventValueChanged];
    [segmentedControl setSelectedSegmentIndex:0];
    self.navigationItem.titleView = segmentedControl;
    
    tableViewController = [[TableViewController alloc] initWithStyle:UITableViewStylePlain];
    tableViewController.tableView.frame = self.view.bounds;
    [self.view addSubview:self.tableViewController.tableView];
    
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.itemSize = CGSizeMake(100, 100);
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    
    collectionViewController = [[CollectionViewController alloc] initWithCollectionViewLayout:flowLayout];
    collectionViewController.collectionView.frame = self.view.bounds;
    //[self.view addSubview:self.collectionViewController.collectionView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)segmentedControlValueDidChange:(UISegmentedControl *)segment
{
    UIView *fromView, *toView;
    
    switch (segmentedControl.selectedSegmentIndex) {
        case 0:
            NSLog(@"Table segment selected");
            
            if (self.collectionViewController.view.superview == self.view)
            {
                fromView = self.collectionViewController.collectionView;
                toView = self.tableViewController.tableView;
            }
            
            break;
        case 1:
            NSLog(@"Collection segment selected");
            
            if (self.tableViewController.view.superview == self.view)
            {
                fromView = self.tableViewController.tableView;
                toView = self.collectionViewController.collectionView;
            }
            
            break;
        default:
            break;
    }
    
    [fromView removeFromSuperview];
    toView.frame = self.view.bounds;
    [self.view addSubview:toView];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
