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
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, - 15, 0, 0)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, self.imageEdgeInsets.left+15, 0, 0)];
//    [self.imageView setFrame:CGRectMake(-30.5, self.imageView.frame.origin.y, self.imageView.frame.size.width, self.imageView.frame.size.height)];
//    [self.titleLabel setFrame:CGRectMake(self.imageView.frame.origin.x + self.imageView.frame.size.width + 12.0, self.titleLabel.frame.origin.y, self.titleLabel.frame.size.width, self.titleLabel.frame.size.height)];
    [self.titleLabel setFont:[UIFont systemFontOfSize:17.0f]];
}

- (void)setterOffset{
    [self setClipsToBounds:NO];
    [self setImageEdgeInsets:UIEdgeInsetsMake(0, - 25, 0, 0)];
    [self setTitleEdgeInsets:UIEdgeInsetsMake(0, self.imageEdgeInsets.left+15, 0, 0)];
    
    [self.titleLabel setFont:[UIFont systemFontOfSize:17.0f]];
}

- (void)awakeFromNib{
    
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
