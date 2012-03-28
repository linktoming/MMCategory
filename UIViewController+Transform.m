//
//  UIViewController+Transform.m
//
//  Created by M2 on 28/3/12.
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

#import "UIViewController+Transform.h"

@implementation UIViewController (Transform)

- (void)moveInView:(UIView *)viewToMoveIn 
 withMovingOutView: (UIView *)viewToMoveOut 
         direction:(NSInteger) direction{

    CGAffineTransform movingInTransform;
    CGAffineTransform movingOutTransform;
    switch (direction) {
        case kMovingDirectionFromLeftToRight:
            movingInTransform = CGAffineTransformMakeTranslation(-320, 0);
            movingOutTransform = CGAffineTransformMakeTranslation(320, 0);
            break;
        case kMovingDirectionFromRightToLeft:
            movingInTransform = CGAffineTransformMakeTranslation(320, 0);
            movingOutTransform = CGAffineTransformMakeTranslation(-320, 0);
            break;
        case kMovingDirectionFromUpsideDown:
            movingInTransform = CGAffineTransformMakeTranslation(0, -480);
            movingOutTransform = CGAffineTransformMakeTranslation(0, 480);
            break;
        case kMovingDirectionFromDownsideUp:
            movingInTransform = CGAffineTransformMakeTranslation(0, 480);
            movingOutTransform = CGAffineTransformMakeTranslation(0, -480);
            break;
        default:
            movingInTransform = CGAffineTransformIdentity;
            movingOutTransform = CGAffineTransformIdentity;
            break;
    }
    
    viewToMoveIn.transform = movingInTransform;
    [viewToMoveIn.superview bringSubviewToFront:viewToMoveIn];
    if (direction!=kMovingDirectionNon) {
        
        [UIView animateWithDuration:0.4 delay:0 options:UIViewAnimationCurveEaseIn animations:^{
            viewToMoveIn.transform = CGAffineTransformIdentity;
            viewToMoveOut.transform = movingOutTransform;
            
        } completion:^(BOOL finished) {
            //
        }];
    }
}
@end
