//
//  ItemTableViewCell.m
//  NLRSSReader
//
//  Created by Nick L on 12/19/16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "ItemTableViewCell.h"
#import "Constants.h"

@implementation ItemTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
//        self
        //TODO: Create code here
    }
    
    return self;
}

- (void)configureCellWithItem:(Item *)item
{
    [self createViews];
    [self setItem:item];
}

- (void)createViews
{
    self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 80, 60)];
    [self.contentView addSubview:self.imgView];
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 5, ScreenWidth - 90, 25)];
    [self.contentView addSubview:self.titleLabel];
    
    self.descriptLabel = [[UILabel alloc] initWithFrame:CGRectMake(90, 30, ScreenWidth - 130, 35)];
    self.descriptLabel.font = [UIFont systemFontOfSize:14.0];
    self.descriptLabel.numberOfLines = 2;
    self.descriptLabel.preferredMaxLayoutWidth = ScreenWidth - CGRectGetMaxX(self.imgView.frame) - 15;
    [self.contentView addSubview:self.descriptLabel];
    
    self.pubDateLabel = [[UILabel alloc] initWithFrame:CGRectMake(ScreenWidth - 40, 30, 40, 25)];
    [self.contentView addSubview:self.pubDateLabel];
    
}

- (void)setItem:(Item *)item
{
    self.item = item;
    
    self.titleLabel.text = item.title;
    self.descriptLabel.text = item.descr;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    self.pubDateLabel.text = [dateFormatter stringFromDate:item.pubDate];
   
    
//    [self loadImgForItem:item];
    
//    self.imgView.image
//    [self setNeedsLayout];
    
}

//- (void)loadImgForItem:(Item *)item
//{
//    NSURLRequest *reques = [NSURLRequest requestWithURL:[NSURL URLWithString:item.imageURL]];
//    
//}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


@end
