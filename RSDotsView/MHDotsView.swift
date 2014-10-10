//
//  MHDotsView.swift
//  RSDotsView
//
//  Created by Remi Santos on 10/10/2014.
//  Copyright (c) 2014 Remi Santos. All rights reserved.
//

import UIKit


private class MHDotView: UIView {
    var fillColor:UIColor = UIColor.blackColor()
    var diameter:CGFloat = CGFloat(1)
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        self.fillColor.setFill()
        CGContextAddEllipseInRect(context,(CGRectMake (0, 0, diameter, diameter)))
        CGContextDrawPath(context, kCGPathFill)
        CGContextStrokePath(context)
    }
}


class MHDotsView: UIView {
   
    var dotsColor:UIColor = UIColor.blackColor() {
        didSet {
            buildView()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buildView()
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        buildView()
    }
    
    
    
    private func buildView() {
        self.layer.cornerRadius = self.bounds.size.width/2;
        
        for subview in self.subviews {
            subview.removeFromSuperview()
        }
        let numberDots = CGFloat(3)
        let width = (self.bounds.size.width)/(numberDots+1)
        let margin = (self.bounds.size.width - (width * numberDots)) / 1.3
        let dotDiameter = width/3
        var frame = CGRectMake(margin, self.bounds.size.height/2 - dotDiameter/2, dotDiameter, dotDiameter);
        
        for i in 0...Int(numberDots-1) {
            var dot = MHDotView(frame: frame)
            dot.diameter = frame.size.width;
            dot.fillColor = self.dotsColor;
            dot.backgroundColor = UIColor.clearColor()
            
            self.addSubview(dot)
            frame.origin.x += width
        }
    }
    
    func startAnimating() {
        var i:Int = 0
        for dot in self.subviews as [MHDotView] {
            dot.transform = CGAffineTransformMakeScale(0.01, 0.01);
            let delay = 0.1*Double(i)
            UIView.animateWithDuration(Double(0.5), delay:delay, options: UIViewAnimationOptions.CurveEaseInOut|UIViewAnimationOptions.Repeat|UIViewAnimationOptions.Autoreverse , animations: { () -> Void in
                dot.transform = CGAffineTransformMakeScale(1, 1);
                }, completion: nil)
            
            i++;
        }
    }
    
    
    func stopAnimating() {
        for dot in self.subviews as [MHDotView] {
            dot.transform = CGAffineTransformMakeScale(1, 1);
            dot.layer.removeAllAnimations()
        }
    }
    
}
