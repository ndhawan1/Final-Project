//
//  ViewController.h
//  finalProject
//
//  Created by iD Student on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
// 160

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
{
    NSTimer *moveBG;
    NSTimer *scoreTimer;
    NSTimer *animatione;
    int counter;
    int counting;
    AVAudioPlayer *theAudio;

}
- (IBAction)jump:(id)sender;
@property (weak, nonatomic) IBOutlet UIImageView *backg;
@property (weak, nonatomic) IBOutlet UIImageView *myChar;
@property (assign) CGPoint position;
@property (weak, nonatomic) IBOutlet UITextField *scores;
//@property (weak, nonatomic) IBOutlet UITextField *ycord;
//@property CGPoint startPoint;
//@property (weak, nonatomic) IBOutlet UITextField *xcord;
@property (weak, nonatomic) IBOutlet UIView *masterView;
@property (weak, nonatomic) IBOutlet UITextView *gameOver;
@property (weak, nonatomic) IBOutlet UIImageView *enemySpike;


//PLATFORMS bkg 1
@property (weak, nonatomic) IBOutlet UIImageView *pl1;
@property (weak, nonatomic) IBOutlet UIImageView *pl2;
@property (weak, nonatomic) IBOutlet UIImageView *pl3;
@property (weak, nonatomic) IBOutlet UIImageView *pl4;
@property (weak, nonatomic) IBOutlet UIImageView *pl5;
@property (weak, nonatomic) IBOutlet UIImageView *pl6;









@end
