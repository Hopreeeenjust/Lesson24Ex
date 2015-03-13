//
//  ViewController.m
//  Lesson24Ex-2
//
//  Created by Hopreeeeenjust on 11.01.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"
#import "CurrentColorView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    fontSize = 1.0f;
    color = [UIColor blackColor].CGColor;
    alpha = 1.f;
    colorRGB = NO;
    self.currentColorView.layer.borderWidth = 1.f;
    self.currentColorView.layer.borderColor = [UIColor blackColor].CGColor;
    self.currentColorView.backgroundColor = [UIColor blackColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Actions

- (IBAction)setLineSizeBySlider:(UISlider *)sender {
    fontSize = (NSInteger)self.lineSizeSlider.value;
    self.lineSizeLabel.text = [NSString stringWithFormat:@"%ld", fontSize];
}

- (IBAction)setButtonColor:(UIButton *)button {
    colorRGB = NO;
    if (button.tag == 1) {
        color = [UIColor blackColor].CGColor;
    } else if (button.tag == 2) {
        color = [UIColor blueColor].CGColor;
    } else if (button.tag == 3) {
        color = [UIColor brownColor].CGColor;
    } else if (button.tag == 4) {
        color = [UIColor cyanColor].CGColor;
    } else if (button.tag == 5) {
        color = [UIColor greenColor].CGColor;
    } else if (button.tag == 6) {
        color = [UIColor magentaColor].CGColor;
    } else if (button.tag == 7) {
        color = [UIColor orangeColor].CGColor;
    } else if (button.tag == 8) {
        color = [UIColor purpleColor].CGColor;
    } else if (button.tag == 9) {
        color = [UIColor redColor].CGColor;
    } else if (button.tag == 10) {
        color = [UIColor yellowColor].CGColor;
    } else if (button.tag == 11) {
        color = [UIColor whiteColor].CGColor;
    }
    [self.currentColorView showCurrentColor];
}

- (IBAction)setLineAlphaBySlider:(UISlider *)sender {
    alpha = self.lineAlphaSlider.value;
    self.lineAlphaLabel.text = [NSString stringWithFormat:@"%.2f", alpha];
    [self.currentColorView showCurrentColor];
}

- (IBAction)setLineRGBColor:(UISlider *)sender {
    colorRGB = YES;
    self.lineColorRLabel.text = [NSString stringWithFormat:@"%ld", (NSInteger)self.lineColorRSlider.value];
    self.lineColorGLabel.text = [NSString stringWithFormat:@"%ld", (NSInteger)self.lineColorGSlider.value];
    self.lineColorBLabel.text = [NSString stringWithFormat:@"%ld", (NSInteger)self.lineColorBSlider.value];
    colorR = self.lineColorRSlider.value / 255;
    colorG = self.lineColorGSlider.value / 255;
    colorB = self.lineColorBSlider.value / 255;
    [self.currentColorView showCurrentColor];
}


- (IBAction)setCleanPage:(UIButton *)button {
    self.drawingView.mainCanvas.image = nil;
}


@end
