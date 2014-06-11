//
//  MMScrapPaperStackView.h
//  LooseLeaf
//
//  Created by Adam Wulf on 8/29/13.
//  Copyright (c) 2013 Milestone Made, LLC. All rights reserved.
//

#import "MMEditablePaperStackView.h"
#import "MMScrapSidebarContainerViewDelegate.h"
#import "MMStretchScrapGestureRecognizerDelegate.h"
#import "MMImageSidebarContainerViewDelegate.h"
#import "MMInboxManagerDelegate.h"

@interface MMScrapPaperStackView : MMEditablePaperStackView<MMPanAndPinchScrapGestureRecognizerDelegate,MMScrapSidebarContainerViewDelegate,MMStretchScrapGestureRecognizerDelegate,MMImageSidebarContainerViewDelegate,MFMailComposeViewControllerDelegate,MMInboxManagerDelegate>

-(NSString*) activeGestureSummary;

@end
