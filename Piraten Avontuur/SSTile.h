//
//  SSTile.h
//  Piraten Avontuur
//
//  Created by Ronald on 05/03/14.
//  Copyright (c) 2014 Solosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SSWeapon.h"
#import "SSArmor.h"

@interface SSTile : NSObject

@property (strong, nonatomic) NSString *strStory;
@property (strong, nonatomic) UIImage *imgBackground;
@property (strong, nonatomic) NSString *btnActionName;
@property (strong, nonatomic) SSWeapon *weapon;
@property (strong, nonatomic) SSArmor *armor;
@property (nonatomic) int healthEffect;

@end
