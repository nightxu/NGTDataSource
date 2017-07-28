//
//  UITableView+NGTDataSource.m
//  NGTDataSourceDemo
//
//  Created by JoeXu on 2017/7/27.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import "UITableView+NGTDataSource.h"

#import <objc/runtime.h>

@implementation UITableView (NGTDataSource)

- (void)setNgtDataSource:(NGTTableViewDataSource *)ngtDataSource{
    objc_setAssociatedObject(self, @selector(ngtDataSource), ngtDataSource, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    self.dataSource = ngtDataSource;
}
- (NGTTableViewDataSource *)ngtDataSource{
    return objc_getAssociatedObject(self, _cmd);
}


@end
