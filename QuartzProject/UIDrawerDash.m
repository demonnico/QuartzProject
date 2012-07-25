//
//  UIDrawerDash.m
//  QuartzProject
//
//  Created by Nicholas Tau on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIDrawerDash.h"

@implementation UIDrawerDash

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
    CGContextSetRGBStrokeColor(context, 1, 1, 1, 1);
    
    CGFloat dashPhase = 1.0;
	
    CGFloat dashPattern[3]={10,20,30};
    
	size_t  dashCount = 10;
    
    CGContextSetLineDash(context, dashPhase, dashPattern, dashCount);
	
	// Draw a horizontal line, vertical line, rectangle and circle for comparison
	CGContextMoveToPoint(context, 10.0, 20.0);
	CGContextAddLineToPoint(context, 310.0, 20.0);
	CGContextMoveToPoint(context, 160.0, 30.0);
	CGContextAddLineToPoint(context, 160.0, 130.0);
	CGContextAddRect(context, CGRectMake(10.0, 30.0, 100.0, 100.0));
	CGContextAddEllipseInRect(context, CGRectMake(210.0, 30.0, 100.0, 100.0));
	// And width 2.0 so they are a bit more visible
	CGContextSetLineWidth(context, 2.0);
	CGContextStrokePath(context);
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
