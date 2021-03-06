//
//  AppDelegate.m
//  6. Data types
//
//  Created by Admin on 14.07.15.
//  Copyright (c) 2015 Admin. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"
#import <UIKit/UIKit.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    //1.
    NSLog(@"%ld",GenderFemale);
    NSLog(@"%ld, %ld",sizeof(int),sizeof(NSInteger));
    Student* student=[Student new];
    student.gender=GenderFemale;
    NSLog(@"%ld",student.gender);
    //---------
    //end of 1.
    
    //2,3
    CGRect rect=CGRectMake(0, 0, 10, 10);
    CGRect rect3by3=CGRectInset(rect, 3.5f, 3.5f);
    
    NSString* str=NSStringFromCGRect(rect3by3);
    NSLog(@"%@",str);

    NSMutableArray* arrayOfPoints=[NSMutableArray array];
    for (NSInteger i=0; i<100; i++) {
        CGPoint point=CGPointMake(arc4random_uniform(10), arc4random_uniform(10));
        if (CGRectContainsPoint(rect3by3, point)) {
            [arrayOfPoints addObject:[NSValue valueWithCGPoint:point]];
        }
    }
    NSLog(@"Random point in rect3by3: %@",arrayOfPoints);
    
    //---------
    //end of 2,3
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
