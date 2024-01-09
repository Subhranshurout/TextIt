//
//  RoundedView.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 07/01/24.
//

import UIKit

class RoundedView: UIView {
    

    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // Apply rounded corners
        layer.cornerRadius = min(bounds.width, bounds.height) / 2
        layer.masksToBounds = true
        
        // Add a border
        layer.borderWidth = 1.5
        layer.borderColor = UIColor.yellow.cgColor
    }
    
}

