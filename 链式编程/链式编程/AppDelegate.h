//
//  AppDelegate.h
//  链式编程
//
//  Created by piaoguanjia123 on 2019/3/26.
//  Copyright © 2019 piaoguanjia123. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

