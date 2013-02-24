//
//  TUTViewController.m
//  Core Plot Introduction
//
//  Created by John Wordsworth on 20/10/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "TUTViewController.h"

@implementation TUTViewController
@synthesize scatterPlot = _scatterPlot;

- (id)initWithPageNumber:(int)page
{
    if (self = [super initWithNibName:@"TUTViewController" bundle:nil])
    {

    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSMutableArray *data = [NSMutableArray array];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(-10, 10)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(-8, 95)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(-6, 85)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(-4, 70)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(-2, 50)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(0, 0)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(2, 4)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(4, 16)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(6, 36)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(8, 64)]];
    [data addObject:[NSValue valueWithCGPoint:CGPointMake(10, 100)]];
    
    self.scatterPlot = [[TUTSimpleScatterPlot alloc] initWithHostingView:_graphHostingView andData:data];
    [self.scatterPlot initialisePlot];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
