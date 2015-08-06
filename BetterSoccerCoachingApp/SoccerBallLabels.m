//
//  SoccerBallLabels.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "SoccerBallLabels.h"

@interface SoccerBallLabels(){
   
}

@end

@implementation SoccerBallLabels

+(UILabel *)newGameTimerLabel{
    UILabel *gameTimerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 40, 15)];
    gameTimerLabel.textColor = [UIColor blueColor];
    gameTimerLabel.backgroundColor = [UIColor clearColor];
    [gameTimerLabel setAdjustsFontSizeToFitWidth:YES];
    
    
    return gameTimerLabel;
}

+(UILabel *)newSessionTimerLabel{
    UILabel *sessionTimerLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 48, 40, 15)];
    sessionTimerLabel.textColor = [UIColor blueColor];
    sessionTimerLabel.backgroundColor = [UIColor clearColor];
    [sessionTimerLabel setAdjustsFontSizeToFitWidth:YES];
    
    return sessionTimerLabel;
}

+(UILabel *)newPlayerNameLabel{
    UILabel *playerNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 63, 40, 15)];
    playerNameLabel.textColor = [UIColor blueColor];
    playerNameLabel.backgroundColor = [UIColor clearColor];
    [playerNameLabel setAdjustsFontSizeToFitWidth:YES];
    
    return playerNameLabel;
}

@end
