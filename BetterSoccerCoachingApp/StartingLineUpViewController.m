//
//  StartinLineUpViewController.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//  This is just a test

#import "StartingLineUpViewController.h"
#import "SoccerFieldViewController.h"
#import "AddPlayerViewController.h"
#import "ListOfPlayersTableViewController.h"

@interface StartingLineUpViewController ()

@end

@implementation StartingLineUpViewController{
    UITableView *startingLineUpTableView;
}

-(BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar *startingLineUpNavBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 40)];
    UINavigationItem *title = [[UINavigationItem alloc]initWithTitle:@"Starting Line-Up"];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backToSoccerField)];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithTitle:@"Substitute" style:UIBarButtonItemStylePlain target:self action:@selector(addPlayer)];
    startingLineUpNavBar.items = [NSArray arrayWithObject:title];
    startingLineUpNavBar.topItem.leftBarButtonItem = leftButton;
    startingLineUpNavBar.topItem.rightBarButtonItem = rightButton;
    [self.view addSubview:startingLineUpNavBar];
    
    startingLineUpTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    startingLineUpTableView.delegate = self;
    startingLineUpTableView.dataSource = self;
    
    startingLineUpTableView.backgroundColor = [UIColor cyanColor];
    
    // add to canvas
    [self.view addSubview:startingLineUpTableView];
}

-(void)backToSoccerField{
    SoccerFieldViewController *soccerFieldViewController = [[SoccerFieldViewController alloc]init];
    [self presentViewController:soccerFieldViewController animated:YES completion:nil];
}

-(void)addPlayer{
    ListOfPlayersTableViewController *listOfPlayersTableViewController = [[ListOfPlayersTableViewController alloc]init];
    [self presentViewController:listOfPlayersTableViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 11;
}


 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
     NSString *cellIdentifier = @"startingLineUpCell";
     UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
 
 // Configure the cell...
     if (!cell) {
         cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];

     }
     cell.textLabel.text = @"Name";
     
     cell.detailTextLabel.text = @"Position";
    
     //cell.backgroundColor = [UIColor redColor];
 return cell;
 }

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
   // cell.textLabel.backgroundColor = [UIColor purpleColor];
   // cell.detailTextLabel.backgroundColor = [UIColor yellowColor];
    
}

 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.

     return YES;
 }


/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */


@end
