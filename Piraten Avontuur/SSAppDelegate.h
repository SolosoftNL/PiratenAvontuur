//
//  SSAppDelegate.h
//  Piraten Avontuur
//
//  Created by Ronald on 05/03/14.
//  Copyright (c) 2014 Solosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface SSAppDelegate : UIResponder <UIApplicationDelegate, AVAudioPlayerDelegate>{
    AVAudioPlayer *audioPlayer;
}

@property (strong, nonatomic) UIWindow *window;

@end
