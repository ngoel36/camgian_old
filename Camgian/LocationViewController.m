//
//  LocationViewController.m
//  Camgian
//
//  Created by Devin Brooks on 2/25/13.
//  Copyright (c) 2013 Devin Brooks. All rights reserved.
//

#import "LocationViewController.h"
#import "LoginViewController.h"
#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface LocationViewController ()

@end

@implementation LocationViewController

@synthesize tableView;

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
    
    // Background
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.view.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor blackColor] CGColor], (id)[[UIColor darkGrayColor] CGColor], nil];
    [self.view.layer insertSublayer:gradient atIndex:0];
    
    // Naviagation Bar Setup
    self.title = @"Locations";
    UIBarButtonItem *logoutButton = [[UIBarButtonItem alloc] initWithTitle:@"Logout" style:UIBarButtonItemStylePlain target:self action:@selector(logoutButtonPressed)];
    self.navigationItem.leftBarButtonItem = logoutButton;
    self.navigationItem.leftBarButtonItem.tintColor = [UIColor redColor];
    
    // Table View Setup
    tableView.layer.cornerRadius = 8.0f;
    tableArray = [[NSMutableArray alloc] initWithObjects:@"Los Angeles",@"New Mexico",@"Nashville", @"Pittsburgh",@"Boston",nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [tableArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [tableArray objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
    //Do work with selected cell
    
    ViewController *detailsView = [[ViewController alloc] init];
    [self.navigationController pushViewController:detailsView animated:YES];
    [self.tableView deselectRowAtIndexPath:[self.tableView indexPathForSelectedRow] animated:YES];
}

- (void)logoutButtonPressed
{
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
