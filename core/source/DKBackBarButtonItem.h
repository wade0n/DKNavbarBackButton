//
//  DKBackBarButtonItem.h
//  MyHome
//
//  Created by Дмитрий Калашников on 15/11/13.
//
//

#import <UIKit/UIKit.h>

@interface DKBackBarButtonItem : UIBarButtonItem
{
    
}
@property (nonatomic, getter=isHidden) BOOL hidden;

- (id)initWithTitle:(NSString *)title;
@end
