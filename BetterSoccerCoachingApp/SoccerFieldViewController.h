//
//  SoccerFieldViewController.h
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SoccerBalls.h"
#import "SoccerBallPositions.h"
#import "soccerBallButton.h"

@interface SoccerFieldViewController : UIViewController <UIActionSheetDelegate>

@property (assign)SoccerBalls *soccerBalls;
@property (assign)SoccerBallPositions *soccerBallPostions;
@property (assign)SoccerBallButton *soccerBallButtons;
@property (strong, nonatomic) IBOutlet UIView *portraitView;
@property (strong, nonatomic) IBOutlet UIView *landscapeView;

-(UIActionSheet *)listOfGameTimeOptionsForEachPlayer;
-(IBAction)soccerBallButtonPressed:(id)sender;

@end

