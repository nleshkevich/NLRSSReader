//
//  UIImage+ImageFromURL.h
//  NLRSSReader
//
//  Created by Nick Leshkevich on 24.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ImageFromURL)

+ (void)loadFromURL:(NSURL *)url completion:(void (^)(UIImage *image))callback;

@end
