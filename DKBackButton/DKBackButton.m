//
//  DKBackButton.m
//  MyHome
//
//  Created by Дмитрий Калашников on 15/11/13.
//
//

#import "DKBackButton.h"
#import <QuartzCore/QuartzCore.h>

@implementation DKBackButton



- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
    }
    return self;
}

- (void)makeOffset{
    [self setClipsToBounds:NO];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, - 13, 0, 0)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, self.imageEdgeInsets.left+10, 0, 0)];
    [self.titleLabel setFont:[UIFont systemFontOfSize:17.0f]];

}

- (void)awakeFromNib{
    
    [self setClipsToBounds:NO];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, -20, 0, 0)];
    
    
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
