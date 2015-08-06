//
//  PlayersInfo.m
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import "PlayersInfo.h"

@interface PlayersInfo(){
    
}

@end

@implementation PlayersInfo
    
- (NSMutableArray*)players{
    Player player1;
    player1.firstName = @"Player1";
    player1.lastName = @"Smith1";
    player1.position = @"Goalie";
    player1.jerseyNumber = 1;
    
    Player player2;
    player2.firstName = @"Player2";
    player2.lastName = @"Smith2";
    player2.position = @"Goalie";
    player2.jerseyNumber = 2;
    
    Player player3;
    player3.firstName = @"Player3";
    player3.lastName = @"Smith3";
    player3.position = @"Goalie3";
    player3.jerseyNumber = 3;
    
    Player player4;
    player4.firstName = @"Player4";
    player4.lastName = @"Smith";
    player4.position = @"Goalie4";
    player4.jerseyNumber = 4;
    
    Player player5;
    player5.firstName = @"Player5";
    player5.lastName = @"Smith";
    player5.position = @"Goalie5";
    player5.jerseyNumber = 5;
    
    Player player6;
    player6.firstName = @"Player6";
    player6.lastName = @"Smith";
    player6.position = @"Goalie6";
    player6.jerseyNumber = 6;
    
    Player player7;
    player7.firstName = @"Player7";
    player7.lastName = @"Smith";
    player7.position = @"Goalie7";
    player7.jerseyNumber = 7;
    
    Player player8;
    player8.firstName = @"Player8";
    player8.lastName = @"Smith";
    player8.position = @"Goalie8";
    player8.jerseyNumber = 8;
    
    Player player9;
    player9.firstName = @"Player9";
    player9.lastName = @"Smith";
    player9.position = @"Goalie9";
    player9.jerseyNumber = 9;
    
    Player player10;
    player10.firstName = @"Player10";
    player10.lastName = @"Smith";
    player10.position = @"Goalie10";
    player10.jerseyNumber = 10;
    
    Player player11;
    player11.firstName = @"Player11";
    player11.lastName = @"Smith";
    player11.position = @"Goalie11";
    player11.jerseyNumber = 11;
    
    Player player12;
    player12.firstName = @"Player12";
    player12.lastName = @"Smith";
    player12.position = @"Goalie12";
    player12.jerseyNumber = 12;
    
    
    NSMutableArray *listOfPlayers = [[NSMutableArray alloc]init];

    return listOfPlayers;
}



@end
