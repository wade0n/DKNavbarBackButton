//
//  DKBackBarButtonItem.m
//  MyHome
//
//  Created by Дмитрий Калашников on 15/11/13.
//
//

#import "DKBackBarButtonItem.h"
#import "DKBackButton.h"

@implementation DKBackBarButtonItem


- (id)init{
    
    DKBackButton *backBtn = [[DKBackButton alloc] initWithFrame:CGRectMake(0, 0, 60, NAVIGATION_BAR_HEIGHT)];
    
    self = [super initWithCustomView:backBtn];
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

- (void)startUp{
//    if (from && [[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@://",backAppIdentifier]]]) {
//        
//        backAppIdentifier = [NSString stringWithString:from];
//        
//        NSMutableArray *leftBarItems = [NSMutableArray new];
//        
//        //UIBarButtonItem* backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"mh_way_icon"] style:UIBarButtonItemStyleBordered target:self action:@selector(goBack)];
//        
//        DKBackButton *btn = [DKBackButton buttonWithType:UIButtonTypeSystem];
//        [btn setTitle:@"Поиск" forState:UIControlStateNormal];
//        [btn addTarget:self action:@selector(goBack) forControlEvents:UIControlEventTouchUpInside];
//        [btn setFrame:CGRectMake(0, 0, 60, 44)];
//        [btn setImage:[[UIImage imageNamed:@"back_indicator_image"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate] forState:UIControlStateNormal];
//        //btn.backgroundColor = [UIColor redColor];
//        [btn makeOffset];
//        
//        
//        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithCustomView:btn];
//        
//        
//        //        UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithTitle:@"Back" style:UIBarButtonItemStylePlain target:self action:@selector(back:)];
//        //        [backButton setImage:[UIImage imageNamed:@"mh_way_icon"]];
//        //[backButton setTitle:@"back"];
//        
//        // backButton.image = [backButton.image imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate];
//        [leftBarItems addObject:backButton];
//        
//        [self.navigationItem setLeftBarButtonItem:backButton animated:NO];

    
}
@end
