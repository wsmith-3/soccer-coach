//
//  PlayersInfo.h
//  BetterSoccerCoachingApp
//
//  Created by Willie Smith on 6/26/15.
//  Copyright (c) 2015 Willie Smith. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct Players{
    __unsafe_unretained NSString *firstName;
    __unsafe_unretained NSString *lastName;
    __unsafe_unretained NSString *position;
     int jerseyNumber;
    
    
}Player;

@interface PlayersInfo : NSObject
@property (nonatomic , strong) NSString *playerFirstName;
@property (nonatomic , strong) NSString *playerLastName;
@property (nonatomic , strong) NSString *playerPosition;
@property (nonatomic , strong) NSNumber *playerJerseyNumber;

@end
