//
//  ViewController.m
//  Fart App
//
//  Created by OSX on 10/10/12.
//  Copyright (c) 2012 OSX. All rights reserved.
//

#import <AudioToolbox/AudioToolbox.h>

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fartButton:(id)sender
{
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    CFURLRef soundFileURL;
    soundFileURL = CFBundleCopyResourceURL(mainBundle, (CFStringRef) @"Fart", CFSTR ("mp3"), NULL);
    UInt32 soundID;
    AudioServicesCreateSystemSoundID (soundFileURL, &soundID);
    AudioServicesPlaySystemSound (soundID);
}

@end
