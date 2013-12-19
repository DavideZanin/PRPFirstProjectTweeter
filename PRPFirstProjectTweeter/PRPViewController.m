//
//  PRPViewController.m
//  PRPFirstProjectTweeter
//
//  Created by Davide Zanin on 30/10/13.
//  Copyright (c) 2013 Davide Zanin. All rights reserved.
//

#import "PRPViewController.h"
#import <Social/Social.h> //ZZ framework per twitter



@interface PRPViewController ()

@end

@implementation PRPViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//MIO CODICE
-(IBAction)handleTweetButtonTapped:(id)sender
{
    if ([SLComposeViewController isAvailableForServiceType: SLServiceTypeTwitter])
    {
        SLComposeViewController *tweetVC =
        [SLComposeViewController composeViewControllerForServiceType:
         SLServiceTypeTwitter];
        [tweetVC setInitialText: NSLocalizedString(
         @"I just finished the first project in iOS SDK Development. #pragsios", nil)];
        [self presentViewController:tweetVC animated:YES completion:NULL];
    } else {
        NSLog(@"Can't send tweet");
    }
}

-(IBAction)handleFacebookButtonTapped:(id)sender {
    if ([SLComposeViewController isAvailableForServiceType: SLServiceTypeFacebook])
    {
        SLComposeViewController *facebookVC =
        [SLComposeViewController composeViewControllerForServiceType:
         SLServiceTypeFacebook];
        [facebookVC setInitialText:
         @"I just finished one project in iOS SDK Development."];
        [self presentViewController:facebookVC animated:YES completion:NULL];
    } else {
        NSLog(@"Can't send message");
    }
    
}

-(IBAction) handleShowMyTweetsTapped: (id) sender {
    [self.twitterWebView loadRequest:
     [NSURLRequest requestWithURL:
      [NSURL URLWithString:@"http://www.twitter.com/DavideZanin"]]];
    

}




@end
