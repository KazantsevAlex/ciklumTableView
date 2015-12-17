//
//  DataSourceTableView.h
//  ciklumTableView
//
//  Created by Казанцев Алексей on 12/16/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol StoreOfZombiesTableView <NSObject>

- (void) addZombie:(NSString *)string inTableView:(UITableView *)tableView;


@end





@interface DataSourceTableView : UITableViewController <StoreOfZombiesTableView>


@property (nonatomic, strong) NSMutableArray * zombiesArray;


- (instancetype)initWithTableView:(UITableView *)tableView;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;



@end
