//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"
@implementation C4WorkSpace {
    C4Shape *s1, *s2;
}

-(void)setup {
    [self setupShapes];
    
    CGAffineTransform myTransform = CGAffineTransformMakeTranslation(100, 100); //First we make a transform
    s2.transform = myTransform; //Then we apply it to our shape
}

-(void) setupShapes {
    CGRect rect = CGRectMake(0, 0, 100, 100);
    
    s1 = [C4Shape rect:rect];
    s2 = [C4Shape rect:rect];
    s2.strokeColor = C4RED;
    
    s1.center = self.canvas.center;
    
    s2.center = s1.center;
    [self.canvas addObjects:@[s1,s2]];
}

@end