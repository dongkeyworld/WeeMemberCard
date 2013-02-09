//
//  WeeMemberCardController.h
//  WeeMemberCard
//
//  Created by 김동휘 on 13. 2. 9..
//  Copyright (c) 2013년 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define CATransform3D
#import "SpringBoard/BBWeeAppController.h"
@interface WeeMemberCardController : NSObject <BBWeeAppController>
{
    UIView *_view;
}

- (UIView *)view;

@end