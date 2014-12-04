//
//  BAPulseButton.m
//  BAPulseEffect
//
//  Created by Bryan Antigua on 12/3/14.
//  Copyright (c) 2014 Bryan Antigua. All rights reserved.
//

#import "BAPulseButton.h"

@implementation BAPulseButton{
    
    CAShapeLayer* pulseOutline;
    
}

-  (id)initWithFrame:(CGRect)aRect
{
    self = [super initWithFrame:aRect];
    
    if (self)
    {
        [self configure];
    }
    return self;
}

- (id)initWithCoder:(NSCoder*)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self)
    {
        [self configure];
    }
    return self;
}


-(void)configure{
    
    //making button round
    self.layer.cornerRadius = self.frame.size.height/2;
    
    
    //configuring click effect
    pulseOutline = [CAShapeLayer layer];
    pulseOutline.frame = self.bounds;
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:
                          CGRectMake(0.0f, 0.0f, self.frame.size.width, self.frame.size.height)];
    [pulseOutline setPath:[path CGPath]];
    [pulseOutline setStrokeColor:[[UIColor blackColor] CGColor]];
    [pulseOutline setFillColor:[UIColor clearColor].CGColor];
    [pulseOutline setLineWidth:0.3f];
    [self.layer insertSublayer:pulseOutline below:self.layer];
    pulseOutline.opacity = 0.0f;
}

-(void)changePulseOutlineColor:(UIColor*) color{
    [pulseOutline setStrokeColor:[color CGColor]];
}

- (void)buttonPressAnimation{
    
    CABasicAnimation *popAnimation;
    popAnimation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    popAnimation.duration=.1;
    popAnimation.repeatCount=1;
    popAnimation.autoreverses=YES;
    popAnimation.fromValue=@1.0;
    popAnimation.toValue=@1.1;
    [self.layer addAnimation:popAnimation forKey:@"animateOpacity"];
    
    CABasicAnimation *pulseAnimation;
    pulseAnimation=[CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulseAnimation.duration=.4;
    pulseAnimation.repeatCount=1;
    pulseAnimation.fromValue=@1.0;
    pulseAnimation.toValue=@1.3;
    [pulseOutline addAnimation:pulseAnimation forKey:@"animateOpacity"];
    
    
    CABasicAnimation *fadeOutAnimation;
    fadeOutAnimation=[CABasicAnimation animationWithKeyPath:@"opacity"];
    fadeOutAnimation.duration=.2;
    fadeOutAnimation.repeatCount=1;
    fadeOutAnimation.autoreverses = YES;
    fadeOutAnimation.fromValue=@0.0;
    fadeOutAnimation.toValue=@1.0;
    [pulseOutline addAnimation:fadeOutAnimation forKey:@"opacity"];
}
@end
