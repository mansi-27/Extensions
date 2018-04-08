//
//  UIImageView+Extensions.swift
//  Extensions
//
//  Created by Mansi Shah on 4/8/18.
//  Copyright © 2018 Mansi Shah. All rights reserved.
//

import UIKit
extension UIImageView {
    func animateZoom() {
        
        UIView.animate(withDuration: 1, animations: {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }) { (success) in
            UIView.animate(withDuration: 1, animations: {
                self.transform = CGAffineTransform(scaleX: 0.7, y: 0.7)
            }, completion: nil)
            
        }
    }
}
