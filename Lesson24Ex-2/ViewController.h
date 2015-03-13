//
//  ViewController.h
//  Lesson24Ex-2
//
//  Created by Hopreeeeenjust on 11.01.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DrawingView;
@class CurrentColorView;

NSInteger fontSize;
CGColorRef color;
CGFloat alpha;
CGFloat colorR;
CGFloat colorG;
CGFloat colorB;
BOOL colorRGB;

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet DrawingView *drawingView;
@property (weak, nonatomic) IBOutlet CurrentColorView *currentColorView;
@property (weak, nonatomic) IBOutlet UISlider *lineSizeSlider;
@property (weak, nonatomic) IBOutlet UILabel *lineSizeLabel;
@property (weak, nonatomic) IBOutlet UISlider *lineAlphaSlider;
@property (weak, nonatomic) IBOutlet UILabel *lineAlphaLabel;
@property (weak, nonatomic) IBOutlet UISlider *lineColorRSlider;
@property (weak, nonatomic) IBOutlet UISlider *lineColorGSlider;
@property (weak, nonatomic) IBOutlet UISlider *lineColorBSlider;
@property (weak, nonatomic) IBOutlet UILabel *lineColorRLabel;
@property (weak, nonatomic) IBOutlet UILabel *lineColorGLabel;
@property (weak, nonatomic) IBOutlet UILabel *lineColorBLabel;

- (IBAction)setLineSizeBySlider:(UISlider *)sender;
- (IBAction)setButtonColor:(UIButton *)button;
- (IBAction)setLineAlphaBySlider:(UISlider *)sender;
- (IBAction)setLineRGBColor:(UISlider *)sender;
- (IBAction)setCleanPage:(UIButton *)button;

@end

