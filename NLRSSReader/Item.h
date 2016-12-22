//
//  Item.h
//  NLRSSReader
//
//  Created by Nick L on 12/19/16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import <CoreData/CoreData.h>

@interface Item : NSManagedObject

@property (nullable, nonatomic, copy) NSString *title;
@property (nullable, nonatomic, copy) NSString *link;
@property (nullable, nonatomic, copy) NSString *descr;
@property (nullable, nonatomic, copy) NSString *imageURL;
@property (nullable, nonatomic, copy) NSDate   *pubDate;
@property (nullable, nonatomic, copy) NSData   *image;


@end
