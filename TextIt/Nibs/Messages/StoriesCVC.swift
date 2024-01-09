//
//  StoriesCVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 07/01/24.
//

import UIKit

class StoriesCVC: UICollectionViewCell {

    @IBOutlet var roundView : UIView!
    @IBOutlet var roundImageView : UIImageView!
    @IBOutlet var nameLbl : UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}

extension StoriesCVC {
    class func prepareToRegisterCells(_ sender : UICollectionView) {
        sender.register(UINib(nibName: "StoriesCVC", bundle: nil), forCellWithReuseIdentifier: "StoriesCVC")
    }
}
