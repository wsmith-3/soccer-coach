//
//  SoccerBalls.h
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SoccerBallButton.h"
#import "SoccerBallLabels.h"
#import "SoccerImages.h"

@interface SoccerBalls : UIView{
    
}

@property (assign)SoccerBallLabels *soccerBallLabels;
@property (assign)SoccerBallButton *soccerBallButton;
@property (assign)SoccerImages *soccerImages;

+(UIView *)newSoccerBallView;
+(UIView *)newSoccerBallView:(NSString *)gameTimer withSessionTimer:(NSString *)sessionTimer nameOfPlayer:(NSString *)playerName;

@end
