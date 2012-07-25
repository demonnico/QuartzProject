//
//  UIDrawerText.m
//  QuartzProject
//
//  Created by Nicholas Tau on 7/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIDrawerText.h"

@implementation UIDrawerText

- (id)initWithFrame:(CGRect)frame content:(NSString*)cont
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        content = cont;
    }
    return self;
}

#define MARGIN_LEFT  50
#define FONT_LINE_HEIGHT 20 
#define MARGIN_TOP 
#define FONT_LINE_WIDTH  20
#define FONT_LINE_SPACE  5
#define TAG_TAB @" "
#define TAG_NEW_LINE @"/n"

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [[UIColor colorWithRed:101.0/255 green:61.0/255 blue:0 alpha:1.0]set];//设置文字颜色
    int iCols = 0;//文字显示的列数
    int iRows = 0;//文字显示的行数
    int iSpace = 0;//文字的空格数

    int titleLen = [content length];
    for(int i = 0; i < titleLen; i++)
    {
        int iPosX = MARGIN_LEFT - iCols * FONT_LINE_HEIGHT;//iPosX是屏幕上x轴的坐标、FONT_LINE_HEIGHT是行高
        int iPosY = MARGIN_TOP + iRows * FONT_LINE_WIDTH + iSpace * FONT_LINE_SPACE;//iPosY是屏幕上y轴的坐标、FONT_LINE_WIDTH是行宽、FONT_LINE_SPACE是空格大小
        CGPoint point = CGPointMake(iPosX, iPosY);
        NSString *sTemp = [content substringWithRange:NSMakeRange(i, 1)];
        if([sTemp isEqualToString:TAG_TAB])//判断是否有空格
        {
            iSpace ++;
        }
        else if([sTemp isEqualToString:TAG_NEW_LINE]||iPosY>=self.frame.size.height-FONT_LINE_HEIGHT)//判断是否换行
        {
            iRows = 0;
            iCols ++;
        }
        else{
            [sTemp drawAtPoint:point withFont:[UIFont systemFontOfSize:12]];//将文字画在画布上指定的位置
            iRows ++;
        }
    }
}


@end
