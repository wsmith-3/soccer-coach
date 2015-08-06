//
//  AddPlayerViewController.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "AddPlayerViewController.h"
#import "StartinLineUpViewController.h"


@interface AddPlayerViewController ()

@end

@implementation AddPlayerViewController

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *addPlayerNavBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    UINavigationItem *title = [[UINavigationItem alloc]initWithTitle:@"Player Info"];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backToStartingLineUp)];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithTitle:@"Done" style:UIBarButtonItemStylePlain target:self action:@selector(doneAddingPlayer)];
    addPlayerNavBar.items = [NSArray arrayWithObject:title];
    addPlayerNavBar.topItem.leftBarButtonItem = leftButton;
    addPlayerNavBar.topItem.rightBarButtonItem = rightButton;
    
    [self.view addSubview:addPlayerNavBar];}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

-(void)backToStartingLineUp{
    StartinLineUpViewController *startingLineUpViewController = [[StartinLineUpViewController alloc]init];
    [self presentViewController:startingLineUpViewController animated:YES completion:nil];
}

-(void)doneAddingPlayer{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
