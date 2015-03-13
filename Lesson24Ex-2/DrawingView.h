//
//  DrawingView.h
//  Lesson24Ex-2
//
//  Created by Hopreeeeenjust on 11.01.15.
//  Copyright (c) 2015 Hopreeeeenjust. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface DrawingView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *canvas;
@property (weak, nonatomic) IBOutlet UIImageView *mainCanvas;
@end
