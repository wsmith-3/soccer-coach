//
//  SoccerImages.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "SoccerImages.h"
#import "SoccerFieldViewController.h"

@interface SoccerImages (){
   
}

@end

@implementation SoccerImages

+(UIImageView *)newSoccerBallImage{
    UIImage *soccerBallImage = [UIImage imageNamed:@"soccerBall.png"];
    UIImageView *soccerBallImageView = [[UIImageView alloc] initWithImage:soccerBallImage];
    soccerBallImageView.frame = CGRectMake(13, 15, 32, 32);
    
    return soccerBallImageView;
}

+(UIViewController *)displaySoccerField{
    SoccerFieldViewController *soccerFieldView = [[SoccerFieldViewController alloc] init];
    UIGraphicsBeginImageContext(soccerFieldView.view.frame.size);
    [[UIImage imageNamed:@"soccerField.png"]drawInRect:soccerFieldView.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    soccerFieldView.view.backgroundColor = [UIColor colorWithPatternImage:image];
    return soccerFieldView;
}

@end
