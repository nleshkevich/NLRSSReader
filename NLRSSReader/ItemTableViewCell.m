//
//  ItemTableViewCell.m
//  NLRSSReader
//
//  Created by Nick L on 12/19/16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "ItemTableViewCell.h"
#import "Constants.h"
#import "UIImage+ImageFromURL.h"

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
    [self setViewsFromItem:item];
    //[self setItem:item];
    
}

- (void)createViews
{
    self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 80, 60)];
//    self.imgView.backgroundColor = [UIColor redColor];
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

- (void)setViewsFromItem:(Item *)item
{
    self.item = item;
    
    self.titleLabel.text = @"В России образовался новый ВИЧ";//item.title;
    self.descriptLabel.text = @"Опасный вирус иммунодефицита человека образовался в России из смешения ранее доминировавшего в РФ штамма и нового агента, занесенного из Центральной Азии";//item.descr;
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    self.pubDateLabel.text = @"Tue, 27 Dec 2016 16:15:00 +0300";//[dateFormatter stringFromDate:item.pubDate];
    
    if (item.image == nil)
    {
        [UIImage loadFromURL:[NSURL URLWithString:@"http://img.tyt.by/thumbnails/n/it/01/2/medicina_lekarstvo_laboratoriya_bakterii_reuters.jpg"/*item.imageURL*/] completion:^(UIImage *image) {
            
            item.image = UIImagePNGRepresentation(image);
            [self.imgView setImage:image];
            
            [self setNeedsLayout];
            
        }];
    }

}

//- (void)setItem:(Item *)item
//{
//    self.item = item;
//    
//    self.titleLabel.text = item.title;
//    self.descriptLabel.text = item.descr;
//    
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
//    self.pubDateLabel.text = [dateFormatter stringFromDate:item.pubDate];
//   
//    if (item.image == nil)
//    {
//        [UIImage loadFromURL:[NSURL URLWithString:item.imageURL] completion:^(UIImage *image) {
//            
//            item.image = UIImagePNGRepresentation(image);
//            [self.imgView setImage:image];
//            
//            [self setNeedsLayout];
//            
//        }];
//    }
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
