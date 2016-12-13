//
//  AppDelegate.h
//  NLRSSReader
//
//  Created by Nick L on 07.12.16.
//  Copyright © 2016 Nick L. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    
    UICollectionViewController *collectionViewController;
}
    

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

