//
//  XMCTableViewDataSource.m
//  XMCreditSDK2.0Prepare
//
//  Created by 徐洪斌 on 2016/11/3.
//  Copyright © 2016年 XM. All rights reserved.
//

#import "NGTTableViewDataSource.h"

@implementation NGTTableViewDataSource

//- (id)init{return nil;}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    if (self.numberOfSectionsBlock) {
        return self.numberOfSectionsBlock(tableView);
    }
    return 0;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (self.numberOfRowsBlock) {
        return self.numberOfRowsBlock(tableView,section);
    }
    return 0;

}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *reusableID;
    if (self.cellReusableIDBlock) {
        reusableID = self.cellReusableIDBlock(tableView,indexPath);
    }
    
    
    UITableViewCell *cell;
    if (reusableID) {
        cell = [tableView dequeueReusableCellWithIdentifier:reusableID];
    }else{
        cell = [[UITableViewCell alloc] init];
    }
    
    
    id data;
    if (self.cellDataBlock) {
        data = self.cellDataBlock(tableView,indexPath);
    }
    
    if(self.cellDataConfigureBlock){
        self.cellDataConfigureBlock(tableView,indexPath,cell,data);
    }
    return cell;
}
@end
