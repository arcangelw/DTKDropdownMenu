//
//  ViewController.m
//  DTKDropdownMenu
//
//  Created by 吴哲 on 16/1/22.
//  Copyright © 2016年 吴哲. All rights reserved.
//

#import "ViewController.h"
#import "DTKDropdownMenuView.h"


#define ColorWithRGB(r,g,b) [UIColor colorWithRed:r/255. green:g/255. blue:b/255. alpha:1]

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    [self addTitleMenu];
    if (self.navigationController.childViewControllers.count == 1) {
        [self addleftItem];
    }
    [self addRightItem];
}

- (void)addTitleMenu
{
    DTKDropdownItem *item0 = [DTKDropdownItem itemWithTitle:@"dropdownItem0" callBack:^(NSUInteger index, id info) {
        NSLog(@"dropdownItem%lu",(unsigned long)index);
    }];
    DTKDropdownItem *item1 = [DTKDropdownItem itemWithTitle:@"dropdownItem1" callBack:^(NSUInteger index, id info) {
        NSLog(@"dropdownItem%lu",(unsigned long)index);
    }];
    DTKDropdownItem *item2 = [DTKDropdownItem itemWithTitle:@"dropdownItem2" callBack:^(NSUInteger index, id info) {
        NSLog(@"dropdownItem%lu",(unsigned long)index);
    }];
    DTKDropdownItem *item3 = [DTKDropdownItem itemWithTitle:@"dropdownItem3" callBack:^(NSUInteger index, id info) {
        NSLog(@"dropdownItem%lu",(unsigned long)index);
    }];
    DTKDropdownMenuView *menuView = [DTKDropdownMenuView dropdownMenuViewForNavbarTitleViewWithFrame:CGRectMake(0, 0, 200.f, 44.f) dropdownItems:@[item0,item1,item2,item3]];
    menuView.currentNav = self.navigationController;
    menuView.dropWidth = 150.f;
    menuView.titleFont = [UIFont systemFontOfSize:18.f];
    menuView.textColor = ColorWithRGB(102.f, 102.f, 102.f);
    menuView.textFont = [UIFont systemFontOfSize:13.f];
    menuView.cellSeparatorColor = ColorWithRGB(229.f, 229.f, 229.f);
    menuView.textFont = [UIFont systemFontOfSize:14.f];
    menuView.animationDuration = 0.2f;
    menuView.selectedIndex = 3;
    self.navigationItem.titleView = menuView;
    
}



- (void)addleftItem
{
    DTKDropdownItem *item0 = [DTKDropdownItem itemWithTitle:@"leftItem0" callBack:^(NSUInteger index, id info) {
        NSLog(@"leftItem%lu",(unsigned long)index);
    }];
    DTKDropdownItem *item1 = [DTKDropdownItem itemWithTitle:@"leftItem1" callBack:^(NSUInteger index, id info) {
        NSLog(@"leftItem%lu",(unsigned long)index);
    }];
    DTKDropdownItem *item2 = [DTKDropdownItem itemWithTitle:@"leftItem2" callBack:^(NSUInteger index, id info) {
        NSLog(@"leftItem%lu",(unsigned long)index);
    }];
    DTKDropdownItem *item3 = [DTKDropdownItem itemWithTitle:@"leftItem3" callBack:^(NSUInteger index, id info) {
        NSLog(@"leftItem%lu",(unsigned long)index);
    }];
    DTKDropdownMenuView *menuView = [DTKDropdownMenuView dropdownMenuViewWithType:dropDownTypeLeftItem frame:CGRectMake(0, 0, 44.f, 44.f) dropdownItems:@[item0,item1,item2,item3] icon:@"ssx_setup"];
    
    menuView.dropWidth = 100.f;
    menuView.titleFont = [UIFont systemFontOfSize:18.f];
    menuView.textColor = ColorWithRGB(102.f, 102.f, 102.f);
    menuView.textFont = [UIFont systemFontOfSize:13.f];
    menuView.cellSeparatorColor = ColorWithRGB(229.f, 229.f, 229.f);
    menuView.textFont = [UIFont systemFontOfSize:14.f];
    menuView.animationDuration = 0.2f;
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:menuView];
}
- (void)addRightItem
{
    __weak typeof(self) weakSelf = self;
    DTKDropdownItem *item0 = [DTKDropdownItem itemWithTitle:@"rightItem0" iconName:@"DTK_jiangbei" callBack:^(NSUInteger index, id info) {
        NSLog(@"rightItem%lu",(unsigned long)index);
        [weakSelf push];
    }];
    DTKDropdownItem *item1 = [DTKDropdownItem itemWithTitle:@"rightItem1" iconName:@"DTK_renwu" callBack:^(NSUInteger index, id info) {
        NSLog(@"rightItem%lu",(unsigned long)index);
        [weakSelf push];
    }];
    DTKDropdownItem *item2 = [DTKDropdownItem itemWithTitle:@"rightItem2" iconName:@"DTK_update" callBack:^(NSUInteger index, id info) {
        NSLog(@"rightItem%lu",(unsigned long)index);
        [weakSelf push];
    }];
    DTKDropdownItem *item3 = [DTKDropdownItem itemWithTitle:@"rightItem3" iconName:@"DTK_xiaoxi" callBack:^(NSUInteger index, id info) {
        NSLog(@"rightItem%lu",(unsigned long)index);
        [weakSelf push];
    }];
    DTKDropdownMenuView *menuView = [DTKDropdownMenuView dropdownMenuViewWithType:dropDownTypeRightItem frame:CGRectMake(0, 0, 44.f, 44.f) dropdownItems:@[item0,item1,item2,item3] icon:@"DTK_bi"];
    
    menuView.dropWidth = 150.f;
    menuView.titleFont = [UIFont systemFontOfSize:18.f];
    menuView.textColor = ColorWithRGB(102.f, 102.f, 102.f);
    menuView.textFont = [UIFont systemFontOfSize:13.f];
    menuView.cellSeparatorColor = ColorWithRGB(229.f, 229.f, 229.f);
    menuView.textFont = [UIFont systemFontOfSize:14.f];
    menuView.animationDuration = 0.2f;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:menuView];
}

- (void)push
{
    UIViewController *vc = [[[self class] alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}



- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}
@end
