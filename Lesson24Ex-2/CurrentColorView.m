//
//  CurrentColorView.m
//  Lesson24Ex-2
//
//  Created by Hopreeeeenjust on 13.01.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import "CurrentColorView.h"
#import "ViewController.h"

@implementation CurrentColorView

- (void)showCurrentColor {
    if (colorRGB) {
        self.backgroundColor = [UIColor colorWithRed:colorR green:colorG blue:colorB alpha:alpha];
    } else {
        self.backgroundColor = [[UIColor colorWithCGColor:color] colorWithAlphaComponent:alpha];
    }
}

@end
