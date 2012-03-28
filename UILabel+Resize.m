//
//  UILabel+Resize.m
//
//  Created by M2 on 28/3/12.
//
//  Reference: 
//  http://stackoverflow.com/questions/446405/adjust-uilabel-height-depending-on-the-text 
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import "UILabel+Resize.h"

@implementation UILabel (Resize)

-(void)resizeToFitWithConstrainedToSize:(CGSize)size{
    
    CGSize expectedLabelSize = [self.text sizeWithFont:self.font 
                                        constrainedToSize:size 
                                            lineBreakMode:self.lineBreakMode]; 
    
    CGRect newFrame = self.frame;
    newFrame.size.height = expectedLabelSize.height;
    newFrame.size.width = expectedLabelSize.width;
    self.frame = newFrame;
    
}

@end
