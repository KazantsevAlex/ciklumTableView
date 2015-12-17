//
//  ZombieTableViewCell.h
//  ciklumTableView
//
//  Created by Казанцев Алексей on 12/16/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol DataCell <NSObject>

- (void)fillWithObject:(id)object;

@end

@interface ZombieTableViewCell : UITableViewCell <DataCell>


@end
