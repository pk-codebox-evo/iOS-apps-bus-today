//
//  JWStopNameButton.m
//  BusRider
//
//  Created by John Wong on 12/13/14.
//  Copyright (c) 2014 John Wong. All rights reserved.
//

#import "JWStopNameButton.h"

@interface JWStopNameButton()

@property (nonatomic, weak) IBOutlet UIView *separator;
@property (nonatomic, weak) IBOutlet UILabel *indexLabel;
@property (nonatomic, weak) IBOutlet UIButton *titleButton;

@end

@implementation JWStopNameButton

- (id)initWithFrame:(CGRect)frame {
    if ((self = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self.class)  owner:self options:nil][0])) {
        [self setFrame:frame];
    }
    return self;
}


#pragma mark action
- (void)setIndex:(NSInteger)index title:(NSString *)title isLast:(BOOL)isLast {
    if (isLast) {
        self.separator.hidden = YES;
    } else {
        self.separator.hidden = NO;
    }
    self.indexLabel.text = [NSString stringWithFormat:@"%ld", index];;
    [self.titleButton setTitle:title forState:UIControlStateNormal];
}

@end