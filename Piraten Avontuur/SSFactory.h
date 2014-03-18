//
//  SSFactory.h
//  Piraten Avontuur
//
//  Created by Ronald on 05/03/14.
//  Copyright (c) 2014 Solosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSCharacter.h"
#import "SSBoss.h"

@interface SSFactory : NSObject

-(NSArray *)tiles;
-(SSCharacter *)character;
-(SSBoss *)boss;
@end
