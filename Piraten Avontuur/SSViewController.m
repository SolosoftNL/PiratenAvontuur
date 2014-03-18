//
//  SSViewController.m
//  Piraten Avontuur
//
//  Created by Ronald on 05/03/14.
//  Copyright (c) 2014 Solosoft. All rights reserved.
//

#import "SSViewController.h"
#import "SSFactory.h"
#import "SSTile.h"

@interface SSViewController ()

@end

@implementation SSViewController

#pragma -mark ViewDidLoad

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    SSFactory *factory =[[SSFactory alloc]init];
    self.tiles = [factory tiles];
    self.character = [factory character];
    self.boss = [factory boss];
    
    self.currentPoint = CGPointMake(0,0);
    NSLog(@"%f, %f", self.currentPoint.x, self.currentPoint.y);
    [self updateTile];
    [self updateButtons];
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnClickAction:(UIButton *)sender {
    //implement damage and health of character
    SSTile *tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    
    if (tile.healthEffect == -15) {
        self.boss.health = self.boss.health - self.character.damage;
        
    }
    
    [self updateCharacterStatsForArmor:tile.armor withWeapons:tile.weapon withHealthEffect:tile.healthEffect];
    
    if (self.character.health <= 0) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Defeated!" message:@"You have defeated. You loss the game" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    }
    else if (self.boss.health <=0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Victory!" message:@"You are victorious and won the game! " delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
    
    [self updateTile];
    
    
        
}

#pragma mark - IBAction

- (IBAction)btnClickNorth:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y +1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)btnClickSouth:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y -1);
    [self updateButtons];
    [self updateTile];
}

- (IBAction)btnClickWest:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x -1, self.currentPoint.y );
    [self updateButtons];
    [self updateTile];
}

- (IBAction)btnClickEast:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x +1, self.currentPoint.y );
    [self updateButtons];
    [self updateTile];
}


#pragma mark - helper methods

-(void)updateTile{
    SSTile *tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    self.lblStory.text = tileModel.strStory;
    self.imgBackground.image = tileModel.imgBackground;
    self.lblHealth.text = [NSString stringWithFormat:@"%i", self.character.health];
    self.lblDamage.text = [NSString stringWithFormat:@"%i", self.character.damage];
    self.lblWeapon.text = self.character.weapon.name;
    self.lblArmour.text = self.character.armor.name;
    [self.btnAction setTitle:tileModel.btnActionName forState:UIControlStateNormal];
       
    
}

-(void)updateButtons{
    self.btnWest.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x-1, self.currentPoint.y)];
    self.btnNorth.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y +1)];
    self.btnEast.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x+1, self.currentPoint.y)];
    self.btnSouth.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x, self.currentPoint.y-1)];
}


-(BOOL)tileExistsAtPoint:(CGPoint)point{
    if (point.x >=0 && point.y  >=0 && point.x < [self.tiles count] && point.y < [[self.tiles objectAtIndex:point.x] count]) {
        return FALSE;
    }
    else{
        return TRUE;
    }
}

-(void)updateCharacterStatsForArmor: (SSArmor *)armor withWeapons:(SSWeapon *)weapon withHealthEffect:(int) healthEffect{
    if (armor!=Nil) {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
        }
    else if (weapon!=nil){
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if(healthEffect!= 0){
        self.character.health = self.character.health + healthEffect;
            }
            else{
                self.character.health += self.character.armor.health;
                self.character.damage += self.character.weapon.damage;
            }
}

@end
