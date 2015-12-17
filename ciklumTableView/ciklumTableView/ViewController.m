//
//  ViewController.m
//  ciklumTableView
//
//  Created by Казанцев Алексей on 12/16/15.
//  Copyright © 2015 Kazantsev Alexey. All rights reserved.
//

#import "ViewController.h"
#import "DataSourceTableView.h"


@interface ViewController ()

@property (nonatomic, strong) DataSourceTableView *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _saveZombieButton.backgroundColor = [UIColor colorWithRed:150.f/255.f green:0.f/255.f blue:255.f/255.f alpha:1];
    _saveZombieButton.titleLabel.font = [UIFont fontWithName:@"Chalkduster" size:20];
    _saveZombieButton.layer.cornerRadius = 10;
    _saveZombieButton.clipsToBounds = YES;
    
    _zombieNameField.backgroundColor = [UIColor colorWithRed:190.f/255 green:255.f/255 blue:255.f/255 alpha:1];
    
    [self setupTableView];
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self
                                   action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
}

- (void)setupTableView
{
    self.dataSource = [[DataSourceTableView alloc] initWithTableView:self.tableWithZombie];

}

- (IBAction)saveZombie:(id)sender {
    
    [self.dataSource addZombie:self.zombieNameField.text inTableView:self.tableWithZombie];
}

-(void)dismissKeyboard {
    [_zombieNameField resignFirstResponder];
}


@end
