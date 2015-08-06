//
//  soccerBallButton.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "SoccerBallButton.h"
#import "SoccerFieldViewController.h"

@interface SoccerBallButton(){
   
}

@end

@implementation SoccerBallButton

static int j = 0;

-(UIButton *)newSoccerBallButton{
    
    UIButton *soccerBallButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 60, 80)];
    soccerBallButton.userInteractionEnabled = YES;

    return soccerBallButton;
    
}

-(UIActionSheet *)listOfGameTimeOptionsForEachPlayer{
    
    UIActionSheet *soccerBallActionSheet = [[UIActionSheet alloc] initWithTitle:@"Player Timer/Stats" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"Start/Stop Timer", @"Clear Timer", @"Goals", @"Saves", @"Assist", @"Penalties", nil];
        return soccerBallActionSheet;
}

-(IBAction)soccerButtonPressed:(id)sender{
    [self listOfGameTimeOptionsForEachPlayer];
}

@end
