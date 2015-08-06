//
//  SoccerBallPositions.h
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;
#import "SoccerBalls.h"

@interface SoccerBallPositions : UIViewController

@property (assign)SoccerBalls *soccerBalls;

extern CGRect *const centerForwardPosition;

+(NSMutableArray *)soccerPostions;


@end
