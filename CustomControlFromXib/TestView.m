//
//  TestView.m
//  CustomControlFromXib
//
//  Created by penghe on 2018/10/23.
//  Copyright © 2018年 WondersGroup. All rights reserved.
//

#import "TestView.h"
@interface TestView ()
@property (weak, nonatomic) IBOutlet UILabel *testLabel;

@end
@implementation TestView

- (void)setTestStr:(NSString *)testStr
{
    self.testLabel.text = testStr;
}

-(void)setTestColor:(UIColor *)testColor
{
    self.testLabel.textColor = testColor;
}

- (void)setConerRadius:(NSInteger)conerRadius
{
    self.layer.cornerRadius = conerRadius;
    self.clipsToBounds = YES;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self == [super initWithCoder:aDecoder]) {
        [self load];

    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        [self load];
    }
    return self;
}

- (void)load
{
    UIView *testView = [[NSBundle bundleForClass:[self class]] loadNibNamed:@"TestView" owner:self options:nil].lastObject;
    [self addSubview:testView];
    testView.frame = self.bounds;
    self.testLabel.text = @"test";
}
@end
