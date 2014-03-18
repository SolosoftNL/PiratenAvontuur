//
//  SSViewController.h
//  Piraten Avontuur
//
//  Created by Ronald on 05/03/14.
//  Copyright (c) 2014 Solosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSCharacter.h"
#import "SSBoss.h"

@interface SSViewController : UIViewController

//Instance variables
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray *tiles;
@property (strong, nonatomic) SSCharacter *character;
@property (strong, nonatomic) SSBoss *boss;


//ITOutlet
@property (strong, nonatomic) IBOutlet UIImageView *imgBackground;
@property (strong, nonatomic) IBOutlet UILabel *lblHealth;
@property (strong, nonatomic) IBOutlet UILabel *lblWeapon;
@property (strong, nonatomic) IBOutlet UILabel *lblArmour;
@property (strong, nonatomic) IBOutlet UILabel *lblStory;
@property (strong, nonatomic) IBOutlet UIButton *btnAction;
@property (strong, nonatomic) IBOutlet UIButton *btnNorth;
@property (strong, nonatomic) IBOutlet UIButton *btnWest;
@property (strong, nonatomic) IBOutlet UIButton *btnEast;
@property (strong, nonatomic) IBOutlet UIButton *btnSouth;
@property (strong, nonatomic) IBOutlet UILabel *lblDamage;



//IBActions
- (IBAction)btnClickAction:(UIButton *)sender;
- (IBAction)btnClickNorth:(UIButton *)sender;
- (IBAction)btnClickWest:(UIButton *)sender;
- (IBAction)btnClickEast:(UIButton *)sender;
- (IBAction)btnClickSouth:(UIButton *)sender;



-(void)updateTile;
-(void)updateButtons;
-(BOOL)tileExistsAtPoint:(CGPoint)point;


@end
