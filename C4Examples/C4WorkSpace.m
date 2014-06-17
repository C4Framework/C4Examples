//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"

@implementation C4WorkSpace {
    
    C4Button *button;
}

-(void)setup {    
    button = [C4Button buttonWithType:ROUNDEDRECT];
    button.center = self.canvas.center;
    
    button.UIButton.multipleTouchEnabled = YES;
    [button run:^{
        self.canvas.backgroundColor = C4RED;
    } forEvent:TOUCHDOWN];
    
    [button run:^{
        self.canvas.backgroundColor = C4BLUE;
    } forEvent:TOUCHUPINSIDE];
    
    [button run:^{
        self.canvas.backgroundColor = C4GREY;
    } forEvent:TOUCHUPOUTSIDE];
    [self.canvas addControl:button];
}

-(void)tapped {
    self.canvas.backgroundColor = [UIColor whiteColor];
}

@end
