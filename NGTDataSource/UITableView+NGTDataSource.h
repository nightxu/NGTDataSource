//
//  UITableView+NGTDataSource.h
//  NGTDataSourceDemo
//
//  Created by JoeXu on 2017/7/27.
//  Copyright © 2017年 NightXu. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "NGTTableViewDataSource.h"

@interface UITableView (NGTDataSource)

@property (nonatomic,strong) NGTTableViewDataSource *ngtDataSource;

@end
