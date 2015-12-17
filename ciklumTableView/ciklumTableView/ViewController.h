//
//  ViewController.h
//  ciklumTableView
//
//  Created by Казанцев Алексей on 12/16/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITableView *tableWithZombie;
@property (weak, nonatomic) IBOutlet UITextField *zombieNameField;
@property (weak, nonatomic) IBOutlet UIButton *saveZombieButton;

@end

