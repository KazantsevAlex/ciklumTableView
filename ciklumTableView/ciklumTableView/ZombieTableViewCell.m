//
//  ZombieTableViewCell.m
//  ciklumTableView
//
//  Created by Казанцев Алексей on 12/16/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "ZombieTableViewCell.h"
#import "DataSourceTableView.h"

@interface ZombieTableViewCell()

@property (weak, nonatomic) IBOutlet UIImageView *zombiePhotoImage;
@property (weak, nonatomic) IBOutlet UILabel *zombieNameLabel;


@end

@implementation ZombieTableViewCell

- (void)fillWithObject:(id)object
{
    self.zombiePhotoImage.image = [UIImage imageNamed:@"my_zombie"];
    self.zombieNameLabel.text = object;
}



@end
