//
//  TUTViewController.h
//  Core Plot Introduction
//
//  Created by John Wordsworth on 20/10/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
// 
//

#import <UIKit/UIKit.h>
#import "CorePlot-CocoaTouch.h"
#import "TUTSimpleScatterPlot.h"

@interface TUTViewController : UIViewController {
    IBOutlet CPTGraphHostingView *_graphHostingView;
    TUTSimpleScatterPlot *_scatterPlot;
}

@property (nonatomic, retain) TUTSimpleScatterPlot *scatterPlot;

- (id)initWithPageNumber:(int)page;

@end
