//
//  DataLoader.m
//  NLRSSReader
//
//  Created by Nick L on 14.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "DataLoader.h"
#import "XMLParserDelegate.h"
#import "Constants.h"

@implementation DataLoader

static DataLoader *sharedInstance;

+ (DataLoader *)getInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[DataLoader alloc] init];
    });
    
    return sharedInstance;
}


+ (void)loadData
{
    [[DataLoader getInstance]  downloadDataBg];
}

- (void)downloadDataBg
{
    //Create block to execute
    dispatch_block_t dispatch_block = ^(void) {
        
        NSURL *feedURL = [NSURL URLWithString:kRSSFeedURL];
        
        NSXMLParser *xmlParser = [[NSXMLParser alloc] initWithContentsOfURL:feedURL];
        
        XMLParserDelegate *delegate = [[XMLParserDelegate alloc] init];
        [xmlParser setDelegate:delegate];
        
        BOOL success = [xmlParser parse];
        // test the result
        if (success) {
            NSLog(@"No errors");
        } else {
            NSLog(@"Error");
        }
        
    };
    
    //Dispatch queue
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_BACKGROUND, 0), dispatch_block);
    //    dispatch_async(fetch_queue, dispatch_block);
    
}


@end
