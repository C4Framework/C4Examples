//
//  C4WorkSpace.m
//  Examples
//
//  Created by Travis Kirton
//

#import "C4WorkSpace.h"

@implementation C4WorkSpace

-(void)setup {
    //set up the label
    C4Font *font = [C4Font fontWithName:@"Futura" size:50];
    C4Label *label = [C4Label labelWithText:@"textShadow" font:font];
    label.center = self.canvas.center;
    
    //change the color of the text's shadow color
    label.textShadowColor = C4RED;
    
    //change the size of the text's shadow offset (default is {0,0})
    label.textShadowOffset = CGSizeMake(2, 2);
    
    //text shadows are different than regular shadows
    label.shadowOffset = CGSizeMake(10, 10);
    label.shadowOpacity = 0.8f;
    
    [self.canvas addControl:label];
}
@end