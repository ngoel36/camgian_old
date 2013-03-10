//
//  LoginVC.h
//  Camgian
//
//  Created by Devin Brooks on 2/25/13.
//  Copyright (c) 2013 Devin Brooks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface LoginViewController : UIViewController

@property (nonatomic, retain) IBOutlet UITextField *nameField;
@property (nonatomic, retain) IBOutlet UITextField *passField;
@property (nonatomic, retain) IBOutlet UIButton *loginButton;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *busyView;

-(IBAction)doLogin: (id)sender;

@end
