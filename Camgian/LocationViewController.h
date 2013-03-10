//
//  LocationViewController.h
//  Camgian
//
//  Created by Devin Brooks on 2/25/13.
//  Copyright (c) 2013 Devin Brooks. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LocationViewController : UIViewController <UITableViewDelegate>
{
    NSMutableArray *tableArray;
}

@property (nonatomic, retain) IBOutlet UITableView *tableView;

@end
