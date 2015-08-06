//
//  SoccerBallPositions.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "SoccerBallPositions.h"
#import "SoccerFieldViewController.h"


@interface SoccerBallPositions() {
    
}

@end



@implementation SoccerBallPositions

@synthesize soccerBalls;
static CGFloat soccerViewWidth = 60;
static CGFloat soccerViewHeight = 80;

+(NSMutableArray *)soccerPostions{
    NSMutableArray *soccerPositions = [NSMutableArray arrayWithObjects:[SoccerBallPositions centerForwardPostion],[SoccerBallPositions leftWingerPostion], [SoccerBallPositions rightWingerPostion], [SoccerBallPositions leftCenterMidFielderPostion], [SoccerBallPositions rightCenterMidFielderPostion], [SoccerBallPositions leftFullBackPostion], [SoccerBallPositions rightFullBackPostion], [SoccerBallPositions leftCenterFullBackPostion], [SoccerBallPositions rightCenterFullBackPostion], [SoccerBallPositions sweeperPostion], [SoccerBallPositions goaliePostion],nil];
    
    return soccerPositions;
}

+(UIView *)centerForwardPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;

    CGRect centerForwardFieldPosition = CGRectMake(screenWidth/2-soccerViewWidth/2, screenHeight/2 - soccerViewHeight/2, soccerViewWidth, soccerViewHeight);
    
    UIView *centerForwardView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Player 1"];
    
    centerForwardView.translatesAutoresizingMaskIntoConstraints = NO;
    
    centerForwardView.frame = centerForwardFieldPosition;
    
    
    
    return centerForwardView;
}

+(UIView *)leftWingerPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect leftWingerFieldPosition = CGRectMake(screenWidth/12, screenHeight/2 - soccerViewHeight/2, soccerViewWidth, soccerViewHeight);
    
    UIView *leftWingerView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Player 2"];
    
    leftWingerView.translatesAutoresizingMaskIntoConstraints = NO;
    
    leftWingerView.frame = leftWingerFieldPosition;
    
    return leftWingerView;
}


+(UIView *)rightWingerPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect rightWingerFieldPosition = CGRectMake(screenWidth - screenWidth/4 , screenHeight/2 - soccerViewHeight/2, soccerViewWidth, soccerViewHeight);
    
    UIView *rightWingerView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    rightWingerView.frame = rightWingerFieldPosition;
    
    return rightWingerView;
}


+(UIView *)leftCenterMidFielderPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect leftCenterMidFielderFieldPosition = CGRectMake(screenWidth/4, screenHeight/2 + screenHeight/16, soccerViewWidth, soccerViewHeight);
    
    UIView *leftCenterMidFielderView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    leftCenterMidFielderView.frame = leftCenterMidFielderFieldPosition;
    
    return leftCenterMidFielderView;
}


+(UIView *)rightCenterMidFielderPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect rightCenterMidFielderFieldPosition = CGRectMake(screenWidth - screenWidth/2.3 , screenHeight/2 + screenHeight/16, soccerViewWidth, soccerViewHeight);
    
    UIView *rightCenterMidFielderView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    rightCenterMidFielderView.frame = rightCenterMidFielderFieldPosition;
    
    return rightCenterMidFielderView;
}


+(UIView *)leftFullBackPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect leftFullBackFieldPosition = CGRectMake(screenWidth/12, screenHeight - screenHeight/3.3, soccerViewWidth, soccerViewHeight);
    
    UIView *leftFullBackView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    leftFullBackView.frame = leftFullBackFieldPosition;
    
    return leftFullBackView;
}


+(UIView *)rightFullBackPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect rightFullBackFieldPosition = CGRectMake(screenWidth/3.75, screenHeight - screenHeight/3.3, soccerViewWidth, soccerViewHeight);
    
    UIView *rightFullBackView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    rightFullBackView.frame = rightFullBackFieldPosition;
    
    return rightFullBackView;
}


+(UIView *)leftCenterFullBackPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect leftCenterFullBackFieldPosition = CGRectMake(screenWidth/2 + screenWidth/16, screenHeight - screenHeight/3.3, soccerViewWidth, soccerViewHeight);
    
    UIView *leftCenterFullBackView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    leftCenterFullBackView.frame = leftCenterFullBackFieldPosition;
    
    return leftCenterFullBackView;
}


+(UIView *)rightCenterFullBackPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect rightCenterFullBackFieldPosition = CGRectMake(screenWidth - screenWidth/4, screenHeight - screenHeight/3.3, soccerViewWidth, soccerViewHeight);
    
    UIView *rightCenterFullBackView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    rightCenterFullBackView.frame = rightCenterFullBackFieldPosition;
    
    return rightCenterFullBackView;
}


+(UIView *)sweeperPostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect sweeperFieldPosition = CGRectMake(screenWidth/2 - soccerViewWidth/2, screenHeight - screenHeight/2.5, soccerViewWidth, soccerViewHeight);
    
    UIView *sweeperView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    sweeperView.frame = sweeperFieldPosition;
    
    return sweeperView;
}


+(UIView *)goaliePostion{
    
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    
    CGRect goalieFieldPosition = CGRectMake(screenWidth/2 - soccerViewWidth/2, screenHeight - screenHeight/6, soccerViewWidth, soccerViewHeight);
    
    UIView *goalieView = [SoccerBalls newSoccerBallView:@"00:00" withSessionTimer:@"00:00" nameOfPlayer:@"Willie Smith"];
    
    goalieView.frame = goalieFieldPosition;
    
    return goalieView;
}


@end
