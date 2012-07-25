//
//  UIDrawerLine.m
//  QuartzProject
//
//  Created by Nicholas Tau on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIDrawerLine.h"

@implementation UIDrawerLine

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
    CGContextSetLineWidth(context, 2);
    
    CGContextMoveToPoint(context, 10, 10);
    CGContextAddLineToPoint(context, 50, 50);
    CGContextStrokePath(context);
    
    CGPoint addLines0[]=
    {
        CGPointMake(10, 150),
        CGPointMake(70, 120),
        CGPointMake(130, 150)
    };
    
    CGContextAddLines(context, addLines0, sizeof(addLines0)/sizeof(addLines0[0]));
    CGContextStrokePath(context);
    
    
    CGPoint addLines1[]=
    {
        CGPointMake(10, 100),
        CGPointMake(70, 80),
        CGPointMake(130, 110),
        CGPointMake(130, 190),
    };
    
    CGContextStrokeLineSegments(context, addLines1, sizeof(addLines1)/sizeof(addLines1[0]));
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
