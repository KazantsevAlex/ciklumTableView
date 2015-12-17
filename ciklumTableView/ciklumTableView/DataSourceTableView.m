//
//  DataSourceTableView.m
//  ciklumTableView
//
//  Created by Казанцев Алексей on 12/16/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "DataSourceTableView.h"
#import "ZombieTableViewCell.h"
#import "ViewController.h"


@interface DataSourceTableView () <UITableViewDataSource, UITableViewDelegate>


@end

@implementation DataSourceTableView



- (instancetype)initWithTableView:(UITableView *)tableView {
    
    if (self = [super init]) {
        [self configure:tableView];
        self.zombiesArray = @[@"Papa-zombie"].mutableCopy;
    }
        return self;
}
    
- (void)configure:(UITableView *)tableView
{
        tableView.dataSource  = self;
        tableView.delegate = self;
        
        [tableView registerNib:[UINib nibWithNibName:@"ZombieTableViewCell" bundle:nil]
        forCellReuseIdentifier:NSStringFromClass([ZombieTableViewCell class])];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    ZombieTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ZombieTableViewCell class])];
    if (!cell) {
        cell = [[ZombieTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                          reuseIdentifier:NSStringFromClass([ZombieTableViewCell class])];
    }
    
    [cell fillWithObject: self.zombiesArray[indexPath.row]];
    
    
    return cell;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.zombiesArray.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100.f;
}

- (void) addZombie:(NSString *)string inTableView:(UITableView *)tableView
{
    
    [self.zombiesArray addObject:string];
    
    [tableView reloadData];
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        [_zombiesArray removeObjectAtIndex:indexPath.row];
        [tableView reloadData];
    }
    
}


@end
