//
//  MMButtonAwareTapGestureRecognizer.m
//  LooseLeaf
//
//  Created by Adam Wulf on 6/10/14.
//  Copyright (c) 2014 Milestone Made, LLC. All rights reserved.
//

#import "MMButtonAwareTapGestureRecognizer.h"

@implementation MMButtonAwareTapGestureRecognizer

-(id) init{
    if(self = [super init]){
        self.delegate = self;
    }
    return self;
}

-(id) initWithTarget:(id)target action:(SEL)action{
    if(self = [super initWithTarget:target action:action]){
        self.delegate = self;
    }
    return self;
}

-(void) cancel{
    if(self.enabled){
        NSLog(@"Cancelled %@ %p", NSStringFromClass([self class]), self);
        self.enabled = NO;
        self.enabled = YES;
    }else{
        NSLog(@"NOT Cancelled %@ %p", NSStringFromClass([self class]), self);
    }
}

#pragma mark - UIGestureRecognizerDelegate

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRequireFailureOfGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return NO;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldBeRequiredToFailByGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return NO;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    // Disallow recognition of tap gestures in the segmented control.
    if ([touch.view isKindOfClass:[UIControl class]]) {
        NSLog(@"ignore touch in %@", NSStringFromClass([self class]));
        return NO;
    }
    return YES;
}

@end
