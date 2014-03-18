//
//  SSCharacter.h
//  Piraten Avontuur
//
//  Created by Ronald on 05/03/14.
//  Copyright (c) 2014 Solosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSWeapon.h"
#import "SSArmor.h"

@interface SSCharacter : NSObject

@property (strong, nonatomic) SSWeapon *weapon;
@property (strong, nonatomic) SSArmor *armor;
@property (nonatomic) int damage;
@property (nonatomic) int health;

@end
