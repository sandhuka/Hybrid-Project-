//
//  DesignView.swift
//  NoblrMenuPOC
//
//  Created by Kanwar Sudeep Singh Sandhu on 15/05/18.
//  Copyright © 2018 Kanwar Sudeep Singh Sandhu. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class DesignView: UIView {
    @IBInspectable var cornerRadius : CGFloat = 2
    @IBInspectable var shadowOffSetWidth : CGFloat = 0
    @IBInspectable var shadowOffSetHeight : CGFloat = 5
    @ IBInspectable let shadowColor : UIColor = UIColor.black
    @IBInspectable var shadowOpacity : CGFloat = 0.5
    
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        
        layer.shadowOpacity = Float(shadowOpacity)
    }
}
