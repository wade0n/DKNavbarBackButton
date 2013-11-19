//
//  DKBackBarButtonItem.m
//  MyHome
//
//  Created by Дмитрий Калашников on 15/11/13.
//
//

#import "DKBackBarButtonItem.h"
#import "DKBackButton.h"

#define NAVIGATION_BAR_HEIGHT 44.0f
@implementation DKBackBarButtonItem

- (id)init{
    self = [super init];
    if (self) {
        [self startUp];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
        [self startUp];
    }
    return self;
}

- (id)initWithTitle:(NSString *)title{
    self = [super init];
    
    if (self) {
        self.title = title;
        [self startUp];
    }
    return self;
}

-(void)awakeFromNib{
    
    
}

- (void)startUp{
    DKBackButton *btn = [DKBackButton buttonWithType:UIButtonTypeSystem];
    if (self.title) {
        [btn setTitle:self.title forState:UIControlStateNormal];
    }
    else{
        [btn setTitle:NSLocalizedString(@"Back", @"This is title of the back bacr button.") forState:UIControlStateNormal];
    }
    
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:15.0f];
    [label setText:self.title];
    [label sizeToFit];
    
    [btn setImage:[[UIImage imageNamed:@"back_indicator_image"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    
    [btn setFrame:CGRectMake(0, 0, label.frame.size.width+22+btn.imageView.frame.size.width , 44)];
    [btn makeOffset];
       
    [self setCustomView:btn];
}


#pragma mark UIButton rewritten methods
- (void)setTitle:(NSString *)title{
    
    NSString *_titleCust = [NSString    stringWithString:title];
    if (!_titleCust) {
        _titleCust = @"";
    }
    
    DKBackButton *btn = (DKBackButton *)self.customView;
    [btn setTitle:_titleCust forState:UIControlStateNormal];
    
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:15.0f];
    [label setText:_titleCust];
    [label sizeToFit];
    
    [btn setFrame:CGRectMake(0, 0, label.frame.size.width+22+btn.imageView.frame.size.width , 44)];
    [btn setterOffset];

   
    
}

- (void)setImage:(UIImage *)image{
    DKBackButton *btn = (DKBackButton *)self.customView;
    
    UILabel *label = [[UILabel alloc] init];
    label.font = [UIFont systemFontOfSize:15.0f];
    [label setText:self.title];
    [label sizeToFit];
    
    [btn setImage:[[UIImage imageNamed:@"back_indicator_image"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
    [btn setFrame:CGRectMake(0, 0, label.frame.size.width+22+btn.imageView.frame.size.width , 44)];
    [btn setterOffset];
}


- (void)setTarget:(id)target{
    [super setTarget:target];
    DKBackButton *btn = (DKBackButton *)self.customView;
    [btn addTarget:target action:self.action forControlEvents:UIControlEventTouchUpInside];
}

- (id)target{
    return [super target];
}

- (void)setAction:(SEL)action{
    [super setAction:action];
    DKBackButton *btn = (DKBackButton *)self.customView;
    [btn addTarget:self.target action:action forControlEvents:UIControlEventTouchUpInside];
}

- (SEL)action{
    return [super action];
}

- (void)setHidden:(BOOL)hidden{
    DKBackButton *btn = (DKBackButton *)self.customView;
    [btn setHidden:hidden];
}
@end
