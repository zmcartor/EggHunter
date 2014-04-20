//
//  ZZZLandscapeView.m
//  Egghead
//
//  Created by _Zach on 4/19/14.
//  Copyright (c) 2014 Compoucher. All rights reserved.
//

#import "ZZZLandscapeView.h"

@implementation ZZZLandscapeView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)selectBackground {
    UIColor *background = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"southpark.PNG"]];
    self.backgroundColor = background;
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
