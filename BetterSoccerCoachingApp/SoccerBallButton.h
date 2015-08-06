//
//  SoccerBallButton.h
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SoccerBallButton : UIView <UIActionSheetDelegate>

-(UIButton *)newSoccerBallButton;
-(UIActionSheet *)listOfGameTimeOptionsForEachPlayer;
-(IBAction)soccerButtonPressed:(id)sender;

@end
