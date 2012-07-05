//
//  ViewController.m
//  finalProject
//
//  Created by iD Student on 7/2/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//1680
//160

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize pl1;
@synthesize pl2;
@synthesize pl3;
@synthesize pl4;
@synthesize pl5;
@synthesize pl6;
@synthesize backg;
@synthesize myChar;
@synthesize position;
@synthesize scores;
//@synthesize ycord;
//@synthesize xcord;
@synthesize masterView;
@synthesize gameOver;
@synthesize enemySpike;
//@synthesize startPoint;
- (void)viewDidLoad
{
    [super viewDidLoad];
	 [[UIApplication sharedApplication] setStatusBarHidden:YES];
    moveBG = [NSTimer scheduledTimerWithTimeInterval: 0.05 target:self selector:@selector(BGmove)userInfo:nil repeats:YES];
    
    
    //scoreTimer = [NSTimer scheduledTimerWithTimeInterval: 0.05 target:self selector:@selector(Score)userInfo:nil repeats:YES];
    
    animatione = [NSTimer scheduledTimerWithTimeInterval: 0.04 target:self selector:@selector(Animate)userInfo:nil repeats:YES];
    
    
    [self.masterView addSubview:backg];
    
    [self.masterView addSubview:pl1];
    pl1.frame = CGRectMake(0,258,111, 21); 
    
    [self.masterView addSubview:pl2];
    pl2.frame = CGRectMake(86,220,56, 5);
    
    [self.masterView addSubview:pl3];
    pl3.frame = CGRectMake(159,191,56, 5);
    
    [self.masterView addSubview:pl4];
    pl4.frame = CGRectMake(234,157,56, 5);
    
    [self.masterView addSubview:pl5];
    pl5.frame = CGRectMake(308,117,56, 5);
    
    [self.masterView addSubview:pl6];
    pl6.frame = CGRectMake(177,242,208, 5);

        
    myChar.frame = CGRectMake(10, 220, 40, 40);
    [self.view addSubview: myChar];
    
    enemySpike.frame = CGRectMake(277, 220, 32, 27);
    [masterView addSubview:enemySpike];
    
    
    gameOver.alpha = 0;
    
    

}

- (void)viewDidUnload
{
    [self setBackg:nil];
    [self setMyChar:nil];
    [self setScores:nil];
    //[self setXcord:nil];
   // [self setYcord:nil];
    [self setMasterView:nil];
    [self setPl1:nil];
    [self setPl2:nil];
    [self setPl3:nil];
    [self setPl4:nil];
    [self setPl5:nil];
    [self setPl6:nil];
    [self setGameOver:nil];
    [self setEnemySpike:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)jump:(id)sender { 
    
    [UIImageView animateWithDuration:0.5f animations:^{
        CGRect currentRect=self.myChar.frame;
        currentRect.origin.y-=70;
        
        [self.myChar setFrame:currentRect];
        
    } completion:^(BOOL finished) {
        
        [UIView animateWithDuration:0.5f animations:^{
            CGRect currentRect=self.myChar.frame;
            
            currentRect.origin.y+=70;
            
            [self.myChar setFrame:currentRect];
            
        }];
    }];
    
    
    
        
}

-(void)Score {
    counter = counter + 1;
    
}

-(void)Animate {
    counting = counting + 1;
   // NSArray *images = [NSArray arrayWithObjects: 
                      // [UIImage imageNamed:@"Char1.png"],
                        //[UIImage imageNamed:@"Char2.png"],
                       // [UIImage imageNamed:@"Char3.png"],
                       // [UIImage imageNamed:@"Char4.png"],
                       // nil]; 
    
    
    if(counting == 0) {
        
        myChar.image = [UIImage imageNamed:@"Char1.png"];
        
        
    }
    
    
    if(counting == 1) {
        
        myChar.image = [UIImage imageNamed:@"Char2.png"];

    }
    
    if(counting ==2) {
        
        myChar.image = [UIImage imageNamed:@"Char3.png"];

        
    }
    
    if (counting == 3) {
        myChar.image = [UIImage imageNamed:@"Char4.png"];

    }
    
    if(counting > 3) {
        
        counting = 0;
    }
    

    
    
    
}


-(void)BGmove {
    masterView.center = CGPointMake(masterView.center.x-4, 160);
    NSLog(@"%f", myChar.center.x);

    //scores.text = [NSString stringWithFormat:@"Score: %i", counter];   


    if(CGRectIntersectsRect(myChar.frame, enemySpike.frame)) {
    
        NSLog(@"COLLISION!!!");
       
        
        
                }
    
    
    
    
    if (myChar.center.y >= 280) {
        
        [moveBG invalidate];
        moveBG = nil;
    }
    

    
    //Teleporter 1
    
    //if(masterView.center.x == 1344) {
        
       // myChar.alpha = 0;
       // NSString *path = [[NSBundle mainBundle] pathForResource:@"teleporter" ofType:@"mp3"];
       // theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath: path] error:NULL];
        
        //[theAudio play];         
  //  }
    
    if(masterView.center.x == 1244) {
        myChar.alpha = 1;
        
    }
    
    //Teleporter 2
    
    if(masterView.center.x == 876) {
        
        myChar.alpha = 0;
        NSString *path = [[NSBundle mainBundle] pathForResource:@"teleporter" ofType:@"mp3"];
        theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath: path] error:NULL];
        
        [theAudio play];         

    }
    
    if(masterView.center.x == 784) {
        
        
        myChar.alpha = 1;
    }
    
    //Teleporter 3
    
    if(masterView.center.x == 416) {
        
        myChar.alpha = 0;
        NSString *path = [[NSBundle mainBundle] pathForResource:@"teleporter" ofType:@"mp3"];
        theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath: path] error:NULL];
        
        [theAudio play];         

    }
    
    if (masterView.center.x == 320) {
        myChar.alpha = 1;
    }
    //Teleporter 4

    if(masterView.center.x == -36) {
        
        myChar.alpha = 0; 
        NSString *path = [[NSBundle mainBundle] pathForResource:@"teleporter" ofType:@"mp3"];
        theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath: path] error:NULL];
        
        [theAudio play];         

    }
    
    if (masterView.center.x == -152) {
        myChar.alpha = 1;
    }
    //Teleporter 5

    if (masterView.center.x == -500) {
        myChar.alpha = 0;
        NSString *path = [[NSBundle mainBundle] pathForResource:@"teleporter" ofType:@"mp3"];
        theAudio = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath: path] error:NULL];
        
        [theAudio play];         

    }
    
    if(masterView.center.x == -600) {
        
        myChar.alpha = 1;
    }

    //End Game
    if(masterView.center.x <= -848) {
        
        myChar.alpha = 0;
        gameOver.alpha = 1;
        gameOver.text =[NSString stringWithFormat:@"\n\nGame Over!\nScore: %i", counter];
        [moveBG invalidate];
        moveBG = nil;

        
    }
    
    
}





@end
