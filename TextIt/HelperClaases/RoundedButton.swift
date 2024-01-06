//
//  RoundedButton.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 06/01/24.
//

import UIKit

class RoundedButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupButton()
    }
    
    private func setupButton() {
        layer.cornerRadius = 20.0
        layer.masksToBounds = true
        setTitleColor(.white, for: .normal)
    }
    
    // You can add more customization as needed
    
}

