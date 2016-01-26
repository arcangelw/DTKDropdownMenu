# DTKDropdownMenu
###对题库通用下拉菜单

公司项目中通用下拉菜单集成，参考了[KTDropdownMenuView](https://github.com/tujinqiu/KTDropdownMenuView),在理清思路和需求后完成了DTKDropdownMenu，感谢
- [@tujinqiu](https://github.com/tujinqiu)

#####因为产品需求（你懂的），很多无用点击后续优化处理掉


用法
---
######支持cocoapods
DTKDropdownMenu
   pod 'DTKDropdownMenu', '~> 0.0.4'
   - Homepage: https://github.com/arcangelw/DTKDropdownMenu
   - Source:   https://github.com/arcangelw/DTKDropdownMenu.git
   - Versions: 0.0.4, 0.0.3, 0.0.2, 0.0.1 [master repo]
   
######或者导入文件夹DTKDropdownMenuView到工程中

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
   