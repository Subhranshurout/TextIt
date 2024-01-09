//
//  Extention UIVIew.swift
//  CustomTabBar
//
//  Created by Yudiz-subhranshu on 03/11/23.
//

import Foundation
import UIKit

class SingleRoundCornerView: UIView {
    
    @IBInspectable var cornerRadius: CGSize = CGSize(width: 16, height: 16)
    
    var maskLayer: CAShapeLayer!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        maskLayer = CAShapeLayer()
        self.layer.mask = maskLayer
        clipsToBounds = true
        layer.masksToBounds = false
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let corner:UIRectCorner = [UIRectCorner.topLeft, UIRectCorner.topRight]
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corner, cornerRadii: cornerRadius)
        maskLayer.path = path.cgPath
    }
}

class RoundView: UIView {
//    @IBInspectable var cornerRadious: CGFloat = 0 {
//        didSet {
//            if cornerRadious == 0 {
//                layer.cornerRadius = (self.frame.height * _widthRatio) / 2
//            } else {
//                layer.cornerRadius = cornerRadious * _widthRatio
//            }
//        }
//    }
//    
//    @IBInspectable var borderColor: UIColor = UIColor.clear{
//        didSet {
//            layer.borderColor = borderColor.cgColor
//        }
//    }
//    
//    @IBInspectable var borderWidth: CGFloat = 0 {
//        didSet {
//            layer.borderWidth = borderWidth
//        }
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.cornerRadius = frame.size.width / 2
        self.layer.masksToBounds = true
    }
}
