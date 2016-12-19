//
//  Item+Init.h
//  NLRSSReader
//
//  Created by Nick L on 12/19/16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "Item.h"

@interface Item (Init)

+(Item *)itemWithTitle:(NSString *)title
                  link:(NSString *)link
           description:(NSString *)description
              imageURL:(NSString *)imgURL
                  date:(NSDate *)date;

@end
