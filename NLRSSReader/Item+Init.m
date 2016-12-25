//
//  Item+Init.m
//  NLRSSReader
//
//  Created by Nick L on 12/19/16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "Item+Init.h"
#import "AppDelegate.h"
#import "Constants.h"

@implementation Item (Init)

/**
 <#Description#>

 @param title <#title description#>
 @param link <#link description#>
 @param description <#description description#>
 @param imgURL <#imgURL description#>
 @param date <#date description#>
 @return <#return value description#>
 */
+(Item *)itemWithTitle:(NSString *)title
                  link:(NSString *)link
           description:(NSString *)description
              imageURL:(NSString *)imgURL
                  date:(NSString *)date
{
    
    Item *item = nil;
    
    item.title  = title;
    item.link   = link;
    item.descr  = description;
    item.imageURL = imgURL;
    
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:kDateFormat];
    item.pubDate = [formatter dateFromString:date];
    
    return item;//Item;
}

@end
