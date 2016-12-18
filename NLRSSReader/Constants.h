//
//  Constants.h
//  NLRSSReader
//
//  Created by Nick L on 14.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//
//
#ifndef Constants_h
#define Constants_h

static NSString * const kRSSFeedURL= @"https://news.tut.by/rss/all.rss"; //TutBy

//XML Parser
static NSString * const kItemElementName= @"item";
static NSString * const kTitleElementName= @"title";
static NSString * const kLinkElementName= @"link";
static NSString * const kPubDateElementName= @"pubDate";
static NSString * const kCategoryElementName= @"category";
static NSString * const kDescriptionElementName= @"description";


#endif //Constants_h
