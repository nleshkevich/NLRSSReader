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

#define ScreenHeight [[UIScreen mainScreen]bounds].size.height

#define ScreenWidth [[UIScreen mainScreen]bounds].size.width

static NSString * const kRSSFeedURL= @"https://news.tut.by/rss/all.rss"; //TutBy

//XML Parser
static NSString * const kItemElementName= @"item";
static NSString * const kTitleElementName= @"title";
static NSString * const kLinkElementName= @"link";
static NSString * const kDescriptionElementName= @"description";
static NSString * const kCategoryElementName= @"category";
static NSString * const kEnclosureElementName= @"enclosure";
static NSString * const kPubDateElementName= @"pubDate";

//Tags for img URL
static NSString * const kImgURLStartElementSearchStr= @"<img src=";
static NSString * const kImgURLEndElementSearchStr= @" width";

//Tags for descr
static NSString * const kDescrStartElementSearchStr= @" />";
static NSString * const kDescrEndElementSearchStr= @"<br";

//Date Format
static NSString * const kDateFormat= @"EEE, dd MMM yyyy HH:mm:ss Z\n";

//Table View
static NSString * const kTableViewCellIdentifier = @"CustomTableViewCell";

#endif //Constants_h
