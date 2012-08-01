//
//  UIDrawerCapJoinWidth.m
//  QuartzProject
//
//  Created by Nicholas Tau on 8/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIDrawerCapJoinWidth.h"

@implementation UIDrawerCapJoinWidth

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(void)drawInContext:(CGContextRef)context
{
    CGFloat lineWidth = 10;
    
    CGContextSetRGBStrokeColor(context, 1, 1, 1, 1 );

    CGContextSaveGState(context);
    
    CGContextSetRGBFillColor(context, 0, 0, 1, 1);
    CGContextFillRect(context, CGRectMake(0, 0, 320, 480));
    
    CGContextMoveToPoint(context, 40, 20);
    CGContextAddLineToPoint(context, 280, 20);
    
    CGContextSetLineWidth(context, lineWidth);
    CGContextSetLineCap(context, kCGLineCapRound);
    CGContextStrokePath(context);
    
    CGContextRestoreGState(context);
    CGContextSaveGState(context);
    
    CGContextMoveToPoint(context, 40, 200);
    CGContextAddLineToPoint(context, 100, 250);
    CGContextAddLineToPoint(context, 160, 200);
    
    CGContextSetLineWidth(context, lineWidth);
    CGContextSetLineJoin(context, kCGLineJoinRound);
    CGContextStrokePath(context);
    
    CGContextRestoreGState(context);
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
