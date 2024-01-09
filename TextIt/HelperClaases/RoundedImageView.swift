//
//  RoundedImageView.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 07/01/24.
//

import UIKit

class RoundedImageView: UIImageView {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        // Apply rounded corners
        layer.cornerRadius = frame.size.width / 2
        layer.masksToBounds = true
        
        // Add a border
//        layer.borderWidth = 5
//        layer.borderColor = UIColor.whiteColor
    }
    
    // You can add additional customization or initialization code here if needed.
}

