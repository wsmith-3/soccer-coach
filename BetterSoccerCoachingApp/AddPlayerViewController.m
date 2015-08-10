//
//  AddPlayerViewController.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "AddPlayerViewController.h"
#import "StartingLineUpViewController.h"


@interface AddPlayerViewController ()

@end

@implementation AddPlayerViewController{
    
}

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
    self.view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:addPlayerNavBar];
    [self.view addSubview:[self firstName]];
    [self.view addSubview:[self lastName]];
    [self.view addSubview:[self position]];
    [self.view addSubview:[self firstNameLabel]];
    [self.view addSubview:[self lastNameLabel]];
    [self.view addSubview:[self positionLabel]];
    
}

- (UITextField*)firstName{
    
    UITextField *playerFirstName = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/3 + 20, 50, (self.view.bounds.size.width * .67) - 30, 20)];
    playerFirstName.borderStyle = UITextBorderStyleBezel;
    playerFirstName.placeholder = @"First Name";
    playerFirstName.backgroundColor = [UIColor whiteColor];
    
    return playerFirstName;
}

- (UITextField*)lastName{
    
    UITextField *playerLastName = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/3 + 20, 90, (self.view.bounds.size.width * .67) - 30, 20)];
    playerLastName.borderStyle = UITextBorderStyleBezel;
    playerLastName.placeholder = @"Last Name";
    playerLastName.backgroundColor = [UIColor whiteColor];
    
    return playerLastName;
}

- (UITextField*)position{
    
    UITextField *playerPosition = [[UITextField alloc]initWithFrame:CGRectMake(self.view.bounds.size.width/3 + 20, 130, (self.view.bounds.size.width * .67) - 30, 20)];
    playerPosition.borderStyle = UITextBorderStyleBezel;
    playerPosition.placeholder = @"Position";
    playerPosition.backgroundColor = [UIColor whiteColor
                                      ];
    
    return playerPosition;
}

- (UILabel*)firstNameLabel{
    UILabel *playerFirstNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 50, self.view.bounds.size.width/3 -10, 20)];
    playerFirstNameLabel.text = @"First Name";
    playerFirstNameLabel.textAlignment = NSTextAlignmentCenter;
    playerFirstNameLabel.layer.borderColor = [[UIColor blackColor]CGColor];
    playerFirstNameLabel.layer.borderWidth = 1.5f;
    
    return playerFirstNameLabel;
}

- (UILabel*)lastNameLabel{
    UILabel *playerLastNameLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 90, self.view.bounds.size.width/3 -10, 20)];
    playerLastNameLabel.text = @"Last Name";
    playerLastNameLabel.textAlignment = NSTextAlignmentCenter;
    playerLastNameLabel.layer.borderColor = [[UIColor blackColor]CGColor];
    playerLastNameLabel.layer.borderWidth = 1.5f;
    
    return playerLastNameLabel;
}

- (UILabel*)positionLabel{
    UILabel *playerPositionLabel = [[UILabel alloc]initWithFrame:CGRectMake(10, 130, self.view.bounds.size.width/3 -10, 20)];
    playerPositionLabel.text = @"Position";
    playerPositionLabel.textAlignment = NSTextAlignmentCenter;
    playerPositionLabel.layer.borderColor = [[UIColor blackColor]CGColor];
    playerPositionLabel.layer.borderWidth = 1.5f;
    
    return playerPositionLabel;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}

-(void)backToStartingLineUp{
    StartingLineUpViewController *startingLineUpViewController = [[StartingLineUpViewController alloc]init];
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
