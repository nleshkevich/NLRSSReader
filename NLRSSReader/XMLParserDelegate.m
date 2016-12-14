//
//  XMLParserDelegate.m
//  NLRSSReader
//
//  Created by Nick L on 14.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "XMLParserDelegate.h"
#import "Constants.h"

@interface XMLParserDelegate ()

@property(nonatomic, copy) NSString *title;
@property(nonatomic, copy) NSString *link;
@property(nonatomic, copy) NSString *text;
@property(nonatomic, copy) NSString *imageURL;
@property(nonatomic, copy) NSString *date;

@end

@implementation XMLParserDelegate

- (void)parserDidStartDocument:(NSXMLParser *)parser
{
    NSLog(@"Did Start Document");
    self.title = [[NSString alloc] init];
    self.link = [[NSString alloc] init];
    self.text = [[NSString alloc] init];
    self.imageURL = [[NSString alloc] init];
    self.date = [[NSString alloc] init];
}

- (void)parser:(NSXMLParser *)parser
    didStartElement:(NSString *)elementName
        namespaceURI:(NSString *)namespaceURI
            qualifiedName:(NSString *)qName
                attributes:(NSDictionary *)attributeDict
{
    NSLog(@"Attributes: %@", attributeDict);
}


@end
