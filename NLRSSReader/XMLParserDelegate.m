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
@property(nonatomic, copy) NSString *descr;
@property(nonatomic, copy) NSString *imageURL;
@property(nonatomic, copy) NSDate   *date;
@property(nonatomic, copy) NSString *tempString;
@property(nonatomic, copy) NSString *element;


@end

@implementation XMLParserDelegate

- (void)parserDidStartDocument:(NSXMLParser *)parser
{
    //    NSLog(@"Did Start Document");
    self.title = [[NSString alloc] init];
    self.link = [[NSString alloc] init];
    self.descr = [[NSString alloc] init];
    self.imageURL = [[NSString alloc] init];
    self.date = [[NSDate alloc] init];
}

- (void)parser:(NSXMLParser *)parser
didStartElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName
    attributes:(NSDictionary *)attributeDict
{
    
    self.element = elementName;
    self.tempString = @"";
    
    if ([elementName isEqualToString:kDescriptionElementName]) {
        
    }
    
}

- (void)parser:(NSXMLParser *)parser
 didEndElement:(NSString *)elementName
  namespaceURI:(NSString *)namespaceURI
 qualifiedName:(NSString *)qName
{
    
    if ([elementName isEqualToString:kItemElementName]){
        
    } else if ([elementName isEqualToString:kTitleElementName]){
        self.title = self.tempString;
    } else if ([elementName isEqualToString:kLinkElementName]){
        self.link = self.tempString;
    } else if ([elementName isEqualToString:kDescriptionElementName]){
        
        int rangeStart = [self.tempString rangeOfString:kImgURLStartElementSearchStr].location;
        int rangeEnd = [self.tempString rangeOfString:kImgURLEndElementSearchStr].location;
        
        if (rangeStart >=0 && rangeEnd >=0 && rangeStart != NSNotFound && rangeEnd != NSNotFound) {
            
            self.imageURL = [self.tempString substringWithRange:NSMakeRange([kImgURLStartElementSearchStr length], rangeEnd - [kImgURLStartElementSearchStr length])];
        }
        
        rangeStart = [self.tempString rangeOfString:kDescrStartElementSearchStr].location;
        rangeEnd = [self.tempString rangeOfString:kDescrEndElementSearchStr].location;
        
        if (rangeStart >=0 && rangeEnd >=0 && rangeStart != NSNotFound && rangeEnd != NSNotFound) {
            
            self.descr = [self.tempString substringWithRange:NSMakeRange(rangeStart + [kDescrStartElementSearchStr length], rangeEnd - rangeStart - [kDescrEndElementSearchStr length])];
        }
        
    } else if ([elementName isEqualToString:kPubDateElementName]){
        
        NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
        [dateFormat setDateFormat:kDateFormat];
        NSDate *date = [dateFormat dateFromString:self.tempString];
        self.date = date;
    }
    
}


- (void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string
{
    
    self.tempString = [self.tempString stringByAppendingString:string];
    
}

@end
