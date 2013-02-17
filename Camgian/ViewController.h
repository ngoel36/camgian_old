//
//  ViewController.h
//  Camgian
//
//  Created by Devin Brooks on 2/13/13.
//  Copyright (c) 2013 Devin Brooks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController <UITableViewDelegate>
{
    UIImageView *imageView;
    BOOL pageControlUsed;
    NSMutableArray *dummyImages;
    NSMutableArray *tableArray;
}

@property (nonatomic, retain) IBOutlet UIScrollView *scrollView;
@property (nonatomic, retain) IBOutlet UITableView *tableView;
@property (nonatomic, retain) IBOutlet UIPageControl *pageControl;
@property (nonatomic, retain) NSMutableArray *dummyImages;

- (IBAction)changePage:(id)sender;

@end
