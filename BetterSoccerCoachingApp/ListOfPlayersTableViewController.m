//
//  ListOfPlayersTableViewController.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "ListOfPlayersTableViewController.h"
#import "AddPlayerViewController.h"
#import "StartingLineUpViewController.h"

@interface ListOfPlayersTableViewController ()

@property (nonatomic , strong) UIView *selectedCell;

@end

@implementation ListOfPlayersTableViewController{
    UITableView *listOfPlayersTableView;
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationBar *listOfPlayersNavigationBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 40)];
    UINavigationItem *title = [[UINavigationItem alloc]initWithTitle:@"List Of Players"];
    UIBarButtonItem *leftButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(backToStartingLineUp)];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc]initWithTitle:@"Add Player" style:UIBarButtonItemStylePlain target:self action:@selector(addAnotherPlayerToListOfPlayers)];
    listOfPlayersNavigationBar.items = [NSArray arrayWithObject:title];
    listOfPlayersNavigationBar.topItem.leftBarButtonItem = leftButton;
    listOfPlayersNavigationBar.topItem.rightBarButtonItem = rightButton;
    listOfPlayersTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 40, self.view.bounds.size.width, self.view.bounds.size.height) style:UITableViewStylePlain];
    listOfPlayersTableView.delegate = self;
    listOfPlayersTableView.dataSource = self;
    
    [self.view addSubview:listOfPlayersNavigationBar];
    [self.view addSubview:listOfPlayersTableView];
    
}

- (void)backToStartingLineUp{
    StartingLineUpViewController *startingLineUpTableViewController = [[StartingLineUpViewController alloc]init];
    [self presentViewController:startingLineUpTableViewController animated:YES completion:nil];
}

- (void)addAnotherPlayerToListOfPlayers{
    AddPlayerViewController *addPlayerViewController = [[AddPlayerViewController alloc]init];
    [self presentViewController:addPlayerViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *listOfPlayersCell = [[NSString alloc]init];
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:listOfPlayersCell];
   
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:listOfPlayersCell];

    }
    cell.backgroundColor = [UIColor grayColor];
    cell.textLabel.text = [NSString stringWithFormat:@"First Name   Last Name"];
    cell.detailTextLabel.text = @"Position";

    return cell;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    
    
    
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}

- (void)tableView:(UITableView *)tableView didEndDisplayingFooterView:(UIView *)view forSection:(NSInteger)section{
    
    
    
}

- (void)tableView:(UITableView *)tableView didEndDisplayingHeaderView:(UIView *)view forSection:(NSInteger)section{
    
    
    
}

- (void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    if (cell.accessoryType == UITableViewCellAccessoryNone) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    }else{
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
   
 
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
   
    
}

- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath{
    

    
}

- (void)tableView:(UITableView *)tableView performAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender{
    
    
    
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    UIView *bgColorView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 40, cell.frame.size.height)];
//    bgColorView.backgroundColor = [UIColor greenColor];
//    [cell setSelectedBackgroundView:bgColorView];
   
    
}

- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section{
    
    
    
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section{
    
    
    
}

// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
   
    return YES;
}



// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
   
    return YES;
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
