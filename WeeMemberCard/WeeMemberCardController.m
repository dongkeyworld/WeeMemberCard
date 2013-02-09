//
//  WeeMemberCardController.m
//  WeeMemberCard
//
//  Created by 김동휘 on 13. 2. 9..
//  Copyright (c) 2013년 __MyCompanyName__. All rights reserved.
//

#import "WeeMemberCardController.h"

@implementation WeeMemberCardController

-(id)init
{
	if ((self = [super init]))
	{
	}

	return self;
}

-(void)dealloc
{
}

- (UIView *)view
{
	if (_view == nil)
	{
        CGSize size = [[UIScreen mainScreen]bounds].size;
		_view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, size.width-4, 71)];

		UIImage *bg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/WeeMemberCard.bundle/WeeAppBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:71];
		UIImageView *bgView = [[UIImageView alloc] initWithImage:bg];
		bgView.frame = CGRectMake(0, 0, size.width-6, 71);
        bgView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;
		[_view addSubview:bgView];

		UILabel *lbl = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, size.width-4, 71)];
		lbl.backgroundColor = [UIColor clearColor];
		lbl.textColor = [UIColor redColor];
        lbl.textAlignment = UITextAlignmentCenter;
		lbl.text = @"Hello, shine!";
        lbl.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin;

		[_view addSubview:lbl];
	}

	return _view;
}


- (float)viewHeight
{
	return 71.0f;
}

@end