//
//  UIDrawerText.h
//  QuartzProject
//
//  Created by Nicholas Tau on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIDrawer.h"

@interface UIDrawerText : UIDrawer
{
    NSString * content;
}

- (id)initWithFrame:(CGRect)frame content:(NSString*)cont;
@end
