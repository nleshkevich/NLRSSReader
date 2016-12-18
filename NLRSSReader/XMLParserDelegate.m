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
@property(nonatomic, copy) NSString *temp;

@end

@implementation XMLParserDelegate

static int counter = 0;

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
    NSLog(@"Element name: %@", elementName);
    NSLog(@"qualifiedName : %@", qName);
    NSLog(@"Attributes: %@", attributeDict);
    
    self.temp = @"";
    
    if ([elementName isEqualToString:kDescriptionElementName]) {
//        NSLog(@"")
    }

}

- (void)parser:(NSXMLParser *)parser
        didEndElement:(NSString *)elementName
            namespaceURI:(NSString *)namespaceURI
                qualifiedName:(NSString *)qName
{
    if ([elementName isEqualToString:kItemElementName]){
        
    } else if ([elementName isEqualToString:kTitleElementName]){
        self.title = self.temp;
    } else if ([elementName isEqualToString:kLinkElementName]){
        self.link = self.temp;
    } else if ([elementName isEqualToString:kDescriptionElementName]){
        self.text = self.temp;
    } else if ([elementName isEqualToString:kPubDateElementName]){
        self.date = self.temp;
    }
    
    
    
}

- (void)parser:(NSXMLParser *)parser foundCDATA:(nonnull NSData *)CDATABlock
{
    
    NSString *str = [[NSString alloc] initWithData:CDATABlock encoding:NSUTF8StringEncoding];
    NSLog(@"CDATABlock: %@", str);
    self.temp = str;
}

- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    NSLog(@"foundCharacters: %@", string);
    if (counter == 0){
        self.temp = [self.temp stringByAppendingString:string];
    }
}

@end
