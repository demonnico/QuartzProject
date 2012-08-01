//
//  ViewController.m
//  QuartzProject
//
//  Created by Nicholas Tau on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

#import "UIDrawerLine.h"
#import "UIDrawerDash.h"
#import "UIDrawerText.h"
#import "UIDrawerCapJoinWidth.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    UIDrawerLine * drawer = [[UIDrawerLine alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
//    [self.view addSubview:drawer];
//    [drawer release];
    
//    UIDrawerDash * drawer = [[UIDrawerDash alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
//    [self.view addSubview:drawer];
//    [drawer release];
    
//      UIDrawerText * drawer = [[UIDrawerText alloc] initWithFrame:CGRectMake(100, 0, 320, 50) content:@"价格：你好啊啊啊啊//n啊啊啊"];
//      [self.view addSubview:drawer];
//      [drawer release];
    
      UIDrawerCapJoinWidth * drawer = [[UIDrawerCapJoinWidth   alloc] initWithFrame:CGRectMake(0, 0, 320, 480)];
      [self.view addSubview:drawer];
      [drawer release];


}

-(void)viewWillAppear:(BOOL)animated
{

}

-(void)viewDidAppear:(BOOL)animated
{

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return UIInterfaceOrientationIsPortrait(interfaceOrientation);
}

@end
