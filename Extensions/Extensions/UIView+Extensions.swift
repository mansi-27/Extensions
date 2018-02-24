//
//  UIView+Extensions.swift
//  Extensions
//
//  Created by Mansi Shah on 2/22/18.
//  Copyright © 2018 Mansi Shah. All rights reserved.
//

import UIKit

extension UIView {
    
    /// Sets rounded corners to the UIView
    func roundedCorners(radius: CGFloat? = nil) {
        if let radius = radius {
            layer.cornerRadius = radius
        } else {
            layer.cornerRadius = frame.size.height / 2
        }
        clipsToBounds = true
    }
    
    /// Produce horizontal shake animation
    func shakeHorizontally(withCount count: Float = 4, duration: TimeInterval = 0.3, translation: Float = -10) {
        
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.repeatCount = count
        animation.duration = (duration)/TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.byValue = translation
        layer.add(animation, forKey: "shake")
        
    }
    
    /// Produce vertical shake animation
    func shakeVertically(withCount count: Float = 4, duration: TimeInterval = 0.3, translation: Float = -10) {
        
        let animation: CABasicAnimation = CABasicAnimation(keyPath: "transform.translation.y")
        animation.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionLinear)
        animation.repeatCount = count
        animation.duration = (duration)/TimeInterval(animation.repeatCount)
        animation.autoreverses = true
        animation.byValue = translation
        layer.add(animation, forKey: "shake")
        
    }
    
    /// Produce fade in animation
    func fadeIn(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping ((Bool) -> Void) = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 1.0
        }, completion: completion)
    }
    
    /// Produce fadeout animation
    func fadeOut(_ duration: TimeInterval = 1.0, delay: TimeInterval = 0.0, completion: @escaping (Bool) -> Void = {(finished: Bool) -> Void in}) {
        UIView.animate(withDuration: duration, delay: delay, options: UIViewAnimationOptions.curveEaseIn, animations: {
            self.alpha = 0.0
        }, completion: completion)
    }
    
    /// Sets border to the UIView
    func setViewBorder(withWidth width: CGFloat = 1.0, color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
}

