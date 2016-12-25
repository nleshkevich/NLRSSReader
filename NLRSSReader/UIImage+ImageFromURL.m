//
//  UIImage+ImageFromURL.m
//  NLRSSReader
//
//  Created by Nick Leshkevich on 24.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import "UIImage+ImageFromURL.h"

@implementation UIImage (ImageFromURL)

+ (void)loadFromURL:(NSURL*)url completion:(void (^)(UIImage *image))completion
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^
                   {
                       NSData *imageData = [NSData dataWithContentsOfURL:url];
                       
                       dispatch_async(dispatch_get_main_queue(), ^
                                      {
                                          UIImage *image = [UIImage imageWithData:imageData];
                                          
                                          if (completion != NULL)
                                          {
                                              completion(image);
                                          }
                                      });
                   });
}

@end
