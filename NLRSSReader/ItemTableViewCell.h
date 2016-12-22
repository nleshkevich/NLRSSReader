//
//  ItemTableViewCell.h
//  NLRSSReader
//
//  Created by Nick L on 12/19/16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Item.h"

@interface ItemTableViewCell : UITableViewCell

@property (nonatomic, strong) UIImageView *imgView;
@property (nonatomic, strong) UILabel     *titleLabel;
@property (nonatomic, strong) UILabel     *pubDateLabel;
@property (nonatomic, strong) UILabel     *descriptLabel;

@property (nonatomic, strong) Item        *item;

@end
