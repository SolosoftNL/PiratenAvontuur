//
//  SSFactory.m
//  Piraten Avontuur
//
//  Created by Ronald on 05/03/14.
//  Copyright (c) 2014 Solosoft. All rights reserved.
//

#import "SSFactory.h"
#import "SSTile.h"
#import "SSBoss.h"

@implementation SSFactory

-(NSArray *)tiles{
    SSTile *tile1 = [[SSTile alloc]init];
    tile1.strStory=@"Captain, we need a fearless leader such as yourself to undertake a voyage. You just stop the evil pirate Boss. Would you like a blunted sword to get started?";
    tile1.imgBackground = [UIImage imageNamed:@"PiratenAvontuur01.jpg"];
    SSWeapon *bluntedSword =[[SSWeapon alloc]init];
    bluntedSword.name = @"Blunted Sword";
    bluntedSword.damage = 12;
    tile1.weapon = bluntedSword;
    tile1.btnActionName = @"Take the Sword";
   
    SSTile *tile2 = [[SSTile alloc]init];
    tile2.strStory=@"You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.imgBackground = [UIImage imageNamed:@"PiratenAvontuur2.jpg"];
    SSArmor *steelArmor = [[SSArmor alloc]init];
    steelArmor.health = 8;
    tile2.armor = steelArmor;
    tile2.btnActionName = @"Take armor";
    
    
    SSTile *tile3 = [[SSTile alloc]init];
    tile3.strStory=@"A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.imgBackground = [UIImage imageNamed:@"PiratenAvontuur3.jpg"];
    tile3.healthEffect = 12;
    tile3.btnActionName =@"Stop at the Dock";
    
    //plaats eerste rij tiles in eerste column
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    SSTile *tile4 = [[SSTile alloc]init];
    tile4.strStory=@"You have found a parrot. This can be used in your armor slot. Parrots are a great defender and are fiercly loyal to their captain!";
    tile4.imgBackground = [UIImage imageNamed:@"PiratenAvontuur4.jpg"];
    SSArmor *parrotArmor = [[SSArmor alloc]init];
    parrotArmor.name =@"Parrot";
    parrotArmor.health = 20;
    tile4.btnActionName = @"Adopt Parrot";
    
    SSTile *tile5 = [[SSTile alloc]init];
    tile5.strStory=@"You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.imgBackground = [UIImage imageNamed:@"PiratenAvontuur5.jpg"];
    SSWeapon *pistol = [[SSWeapon alloc] init];
    pistol.name =@"Pistol";
    pistol.damage = 17;
    tile5.btnActionName =@"Use the Pistol";
    
    SSTile *tile6 = [[SSTile alloc]init];
    tile6.strStory=@"You have been captured by pirates and are ordered to walk the plank!";
    tile6.imgBackground = [UIImage imageNamed:@"PiratenAvontuur6.jpg"];
    tile6.healthEffect = -22;
    tile6.btnActionName = @"Show no fear";
    
    //plaats eerste rij tiles in eerste column
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    SSTile *tile7 = [[SSTile alloc]init];
    tile7.strStory=@"You have sighted a pirates battle off the coast. Should we intervene?";
    tile7.imgBackground = [UIImage imageNamed:@"PiratenAvontuur7.jpg"];
    tile7.healthEffect = 8;
    tile7.btnActionName = @"Fight those scum";
    
    SSTile *tile8 = [[SSTile alloc]init];
    tile8.strStory=@"The legend of the deep. The mighty kraken appears";
    tile8.imgBackground = [UIImage imageNamed:@"PiratenAvontuur8.jpg"];
    tile8.healthEffect =-46;
    tile8.btnActionName = @"Abandon ship";
    
    SSTile *tile9 = [[SSTile alloc]init];
    tile9.strStory=@"You have stumbled upon a hidden cave of pirate treasurer";
    tile9.imgBackground = [UIImage imageNamed:@"PiratenAvontuur9.jpg"];
    tile9.healthEffect = 20;
    tile9.btnActionName =@"Take treasure";
    
    //plaats eerste rij tiles in eerste column
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    SSTile *tile10 = [[SSTile alloc]init];
    tile10.strStory=@"A group of pirates attempts to board your ship.";
    tile10.imgBackground = [UIImage imageNamed:@"PiratenAvontuur11.jpg"];
    tile10.healthEffect = -10;
    tile10.btnActionName =@"Repel the invaders";
    
    SSTile *tile11 = [[SSTile alloc]init];
    tile11.strStory=@"In the deep of the ocean many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.imgBackground = [UIImage imageNamed:@"PiratenAvontuur10.jpg"];
    tile11.healthEffect = -7;
    tile11.btnActionName = @"Swim deeper";
    
    SSTile *tile12= [[SSTile alloc]init];
    tile12.strStory=@"Your final faceoff with the fearsome pirate boss!";
    tile12.imgBackground = [UIImage imageNamed:@"PiratenAvontuur12.jpg"];
    tile12.healthEffect = -15;
    tile12.btnActionName = @"Fight";
    
    //plaats eerste rij tiles in eerste column
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    NSArray *totalTiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    
    return totalTiles;
}

-(SSCharacter *)character{
    SSCharacter *character = [[SSCharacter alloc]init];
    SSWeapon *weapon = [[SSWeapon alloc]init];
    SSArmor *armor = [[SSArmor alloc]init];
    weapon.name =@"Cloak";
    weapon.damage=10;
    armor.name = @"Fists";
    armor.health=5;
    
    character.weapon = weapon;
    character.armor  = armor;
    character.health =100;
    //character.damage = 0;
    
    return character;
    
}

-(SSBoss *)boss{
    SSBoss *boss = [[SSBoss alloc]init];
    boss.health = 65;
    
    return boss;
}

@end
