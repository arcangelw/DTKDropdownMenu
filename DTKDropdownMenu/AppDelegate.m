//
//  AppDelegate.m
//  DTKDropdownMenu
//
//  Created by 吴哲 on 16/1/22.
//  Copyright © 2016年 吴哲. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [[UINavigationBar appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22.f],NSForegroundColorAttributeName:[UIColor whiteColor]}];
    [[UINavigationBar appearance] setBarTintColor:[UIColor redColor]];
    [[UINavigationBar appearance] setTranslucent:NO];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.f],NSForegroundColorAttributeName:[UIColor whiteColor]} forState:UIControlStateNormal];
    [[UIBarButtonItem appearance] setTintColor:[UIColor whiteColor]];
    
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:[[NSClassFromString(@"ViewController") alloc]init]];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = nav;
    return YES;
}

@end
