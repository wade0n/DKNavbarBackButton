//
//  DKBackBarButtonItem.h
//  MyHome
//
//  Created by Дмитрий Калашников on 15/11/13.
//
//

#import <UIKit/UIKit.h>
#import "DKBackButton.h"

@interface DKBackBarButtonItem : UIBarButtonItem
{
    
}
@property (nonatomic, getter=isHidden) BOOL hidden;
@property (nonatomic, strong) DKBackButton *btn;

- (id)initWithTitle:(NSString *)title;
@end
