DKNavbarBackButton
==================

Use to get a back button with a custom action and target. Also customizable tintColor

Usage:

Podfile:

pod 'DKNavbarBackButton', :git => 'ssh://git@scm.webinmotion.de:7999/osp/dknavbarbackbutton.git'

Example Code:

 DKBackBarButtonItem * item = [[DKBackBarButtonItem alloc] initWithTitle:@"Menü" style:UIBarButtonItemStylePlain target:self action:@selector(didPressButton:)];
 [item setTintColor:[UIColor blackColor]];
 self.navigationItem.leftBarButtonItem = item;
