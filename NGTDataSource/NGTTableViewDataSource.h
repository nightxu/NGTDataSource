//
//  XMCTableViewDataSource.h
//  XMCreditSDK2.0Prepare
//
//  Created by 徐洪斌 on 2016/11/3.
//  Copyright © 2016年 XM. All rights reserved.
//

#import <Foundation/Foundation.h>

#import <UIKit/UIKit.h>

@interface NGTTableViewDataSource : NSObject<UITableViewDataSource>

@property (nonatomic,copy) NSInteger(^numberOfSectionsBlock)(UITableView *);

@property (nonatomic,copy) NSInteger(^numberOfRowsBlock)(UITableView *,NSInteger);

@property (nonatomic,copy) NSString*(^cellReusableIDBlock)(UITableView *,NSIndexPath *);

@property (nonatomic,copy) id (^cellDataBlock)(UITableView *,NSIndexPath *);

@property (nonatomic,copy) void(^cellDataConfigureBlock)(UITableView *,NSIndexPath *,id cell,id data);

@end
