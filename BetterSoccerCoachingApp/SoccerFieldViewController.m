//
//  SoccerFieldViewController.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "SoccerFieldViewController.h"
#import "StartingLineUpViewController.h"
#import "SoccerImages.h"

@interface SoccerFieldViewController ()

@property (nonatomic , strong) UIView *redView;

@end



@implementation SoccerFieldViewController

@synthesize soccerBalls;
@synthesize soccerBallPostions;
@synthesize soccerBallButtons;

-(BOOL)prefersStatusBarHidden{
    return YES;
}

-(IBAction)handlePan:(UIPanGestureRecognizer *)recognizer{
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
}

-(UIPanGestureRecognizer *)draggingSoccerBall{
    UIPanGestureRecognizer * dragTheBall = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
    
    return dragTheBall;
}

-(IBAction)soccerBallButtonPressed:(id)sender{
    [self listOfGameTimeOptionsForEachPlayer];
}

-(UIActionSheet *)listOfGameTimeOptionsForEachPlayer{
    UIActionSheet *soccerBallActionSheet = [[UIActionSheet alloc] initWithTitle:@"Player Timer/Stats" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Start/Stop Timer", @"Clear Timer", @"Goals", @"Saves", @"Assist", @"Penalties", nil];
    
    [soccerBallActionSheet showInView:self.view];
    
    return soccerBallActionSheet;
}


-(void)viewWillAppear:(BOOL)animated{
    
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"soccerField.png"]drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    UINavigationController *listOfPlayers = [[UINavigationController alloc]init];
  
   
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    SoccerBallButton *soccerBallButtonClass = [[SoccerBallButton alloc] init];
    NSMutableArray *soccerPlayersPostions = [[NSMutableArray alloc]init];
    for (int i = 0 ; i < [SoccerBallPositions soccerPostions].count; i++){
        soccerPlayersPostions = [SoccerBallPositions soccerPostions];
        [soccerPlayersPostions[i] addGestureRecognizer:[self draggingSoccerBall]];
        
        UIButton *soccerBallButtonChange = [soccerBallButtonClass newSoccerBallButton];
        [soccerBallButtonChange addTarget:self action:@selector(soccerBallButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
        
        [soccerPlayersPostions[i] addSubview:soccerBallButtonChange];
        
        [self.view addSubview:soccerPlayersPostions[i]];
   
    }
    [self.view addSubview:[self startingLineUpNavButton]];
}

-(UIButton*)startingLineUpNavButton{
    
    UIButton *startingLineUpNavButton = [[UIButton alloc]init];
    UILabel *navTitle = [[UILabel alloc]init];
    navTitle.text = @"Starting Line-Up";
    [startingLineUpNavButton setTitle:@"Starting Line-Up" forState:UIControlStateNormal];
    startingLineUpNavButton.titleLabel.font = [UIFont systemFontOfSize:12];
    [startingLineUpNavButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    startingLineUpNavButton.frame = CGRectMake(5, 5, 100, 20);
    startingLineUpNavButton.backgroundColor = [UIColor clearColor];
//    startingLineUpNavButton.titleLabel =
    [startingLineUpNavButton addTarget:self action:@selector(showStartingLineUpView) forControlEvents:UIControlEventTouchUpInside];
    
    return startingLineUpNavButton;

}

-(void)showStartingLineUpView{
    StartingLineUpViewController *startingLineUpViewController = [[StartingLineUpViewController alloc]init];
    [self presentViewController:startingLineUpViewController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
