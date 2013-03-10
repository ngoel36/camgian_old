//
//  LoginVC.m
//  Camgian
//
//  Created by Devin Brooks on 2/25/13.
//  Copyright (c) 2013 Devin Brooks. All rights reserved.
//

#import "LoginViewController.h"
#import "LocationViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

@synthesize nameField, passField, loginButton, busyView;

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
    
    // Background Setup
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor blackColor] CGColor], (id)[[UIColor darkGrayColor] CGColor], nil];
    [self.view.layer insertSublayer:gradient atIndex:0];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)doLogin: (id)sender
{
    [busyView startAnimating];
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(verifyLogin) userInfo:nil repeats:NO];
}

- (void)verifyLogin
{
    [busyView stopAnimating];
    
    LocationViewController *locationView = [[LocationViewController alloc] init];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:locationView];
    navigationController.toolbarHidden = YES;
    navigationController.navigationBar.barStyle = UIBarStyleBlack;
    navigationController.toolbar.barStyle = UIBarStyleBlack;
    [self presentViewController:navigationController animated:YES completion:nil];
}



@end
