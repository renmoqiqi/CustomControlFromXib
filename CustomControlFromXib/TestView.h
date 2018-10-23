//
//  TestView.h
//  CustomControlFromXib
//
//  Created by penghe on 2018/10/23.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface TestView : UIView

@property (copy, nonatomic) IBInspectable NSString *testStr;
@property (strong, nonatomic) IBInspectable UIColor *testColor;
@property (assign, nonatomic) IBInspectable NSInteger conerRadius;


@end
