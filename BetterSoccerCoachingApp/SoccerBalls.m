//
//  SoccerBalls.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "SoccerBalls.h"

@interface SoccerBalls ()

@end

@implementation SoccerBalls

@synthesize soccerBallLabels;
@synthesize soccerBallButton;
@synthesize soccerImages;

static int i = 1; 

+(UIView *)newSoccerBallView{
    
    CGRect viewRect = CGRectMake(210, 130, 60, 80);
    
    SoccerBalls *soccerBallView = [[SoccerBalls alloc]initWithFrame:viewRect];
    [soccerBallView setBackgroundColor:[UIColor clearColor]];
    
    UILabel *gameTimerLabel = [SoccerBallLabels newGameTimerLabel];
    UILabel *sessionTimerLabel = [SoccerBallLabels newSessionTimerLabel];
    UILabel *playerNameLabel = [SoccerBallLabels newPlayerNameLabel];
    //UIButton *soccerBallButton = [SoccerBallButton newSoccerBallButton];
    UIImageView *soccerBallImageView = [SoccerImages newSoccerBallImage];
    
    //[soccerBallView addSubview:soccerBallButton];
    [soccerBallView addSubview:soccerBallImageView];
    [soccerBallView addSubview:gameTimerLabel];
    [soccerBallView addSubview:sessionTimerLabel];
    [soccerBallView addSubview:playerNameLabel];
    
    NSLog(@" soccerBall queue is %i",i++);
    
    return soccerBallView;
    
}

+(UIView *)newSoccerBallView:(NSString *)gameTimer withSessionTimer:(NSString *)sessionTimer nameOfPlayer:(NSString *)playerName{
    
    SoccerBalls *soccerBallView = [[SoccerBalls alloc]init];
    [soccerBallView setBackgroundColor:[UIColor clearColor]];
    SoccerBallButton *soccerBallButtonClass = [[SoccerBallButton alloc]init];
    
    UILabel *gameTimerLabel = [SoccerBallLabels newGameTimerLabel];
    UILabel *sessionTimerLabel = [SoccerBallLabels newSessionTimerLabel];
    UILabel *playerNameLabel = [SoccerBallLabels newPlayerNameLabel];
    UIButton *soccerBallButton = [soccerBallButtonClass newSoccerBallButton];
    UIImageView *soccerBallImageView = [SoccerImages newSoccerBallImage];
   
    gameTimerLabel.text = gameTimer;
    sessionTimerLabel.text = sessionTimer;
    playerNameLabel.text = playerName;
    
    [soccerBallView addSubview:soccerBallButton];
    [soccerBallView addSubview:soccerBallImageView];
    [soccerBallView addSubview:gameTimerLabel];
    [soccerBallView addSubview:sessionTimerLabel];
    [soccerBallView addSubview:playerNameLabel];
    
     NSLog(@" soccerBall queue is %i",i++);
    
    return soccerBallView;
    
}



@end
