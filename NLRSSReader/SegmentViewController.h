//
//  SegmentViewController.h
//  NLRSSReader
//
//  Created by Nick L on 09.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewController.h"
#import "CollectionViewController.h"

@interface SegmentViewController : UIViewController <UINavigationControllerDelegate> {
    
    UISegmentedControl  *segmentedControl;
//    UIViewController    *activeViewController;
//    NSArray             *segmentedViewController;
}

@property(nonatomic, strong) TableViewController *tableViewController;
@property(nonatomic, strong) CollectionViewController *collectionViewController;

@end
