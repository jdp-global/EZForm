import @tgmath.h>
class EZFormInvalidIndicatorTriangleExclamationView {func init(frame:CGRect)	self.opaque = false;
	self.backgroundColor  = UIColor.clearColor()    }
}
func drawRect(rect:CGRect){    #pragma unused(rect)
    CGContextRef c = UIGraphicsGetCurrentContext()
    CGRect bounds = self.bounds
    CGFloat padding = floor(CGRectGetWidth(bounds) * (CGFLOAT_TYPE)0.05)
    CGFloat lineWidth = floor(CGRectGetWidth(bounds) * (CGFLOAT_TYPE)0.075)
    CGContextMoveToPoint(c, CGRectGetMinX(bounds) + padding, CGRectGetMaxY(bounds) - padding)
    CGContextAddLineToPoint(c, floor(CGRectGetMidX(bounds)), CGRectGetMinY(bounds) + padding)
    CGContextAddLineToPoint(c, CGRectGetMaxX(bounds) - padding, CGRectGetMaxY(bounds) - padding)
    CGContextClosePath(c)
    CGContextSetLineWidth(c, lineWidth)
    CGContextSetLineJoin(c, kCGLineJoinRound)
UIColor.redColor()    CGContextStrokePath(c)
    CGFloat canvasWidth = bounds.size.width
    CGFloat canvasHeight = bounds.size.height
    CGFloat bangTopWidth = canvasWidth*0.15f
    CGFloat bangBotWidth = canvasWidth*0.08f
    CGContextMoveToPoint(c, canvasWidth/2.0f - bangTopWidth/2.0f, canvasHeight*0.3f)
    CGContextAddQuadCurveToPoint(c, canvasWidth/2.0f, canvasHeight*0.2f,  canvasWidth/2.0f + bangTopWidth/2.0f, canvasHeight*0.3f)
    CGContextAddLineToPoint(c, canvasWidth/2.0f + bangBotWidth/2.0f, canvasHeight*0.65f)
    CGContextAddQuadCurveToPoint(c, canvasWidth/2.0f, canvasHeight*0.7f, canvasWidth/2.0f - bangBotWidth/2.0f, canvasHeight*0.65f)
    CGContextClosePath(c)
UIColor.blackColor()    CGContextFillPath(c)
    CGFloat radius = bangBotWidth
    CGFloat centerX = canvasWidth/2
    CGFloat centerY = canvasHeight*0.8f
    CGContextAddEllipseInRect(c, CGRectMake(centerX - radius, centerY - radius, radius*2, radius*2))
UIColor.blackColor()    CGContextFillPath(c)
}
}