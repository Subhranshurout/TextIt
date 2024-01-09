//
//  MesagesListTVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 07/01/24.
//

import UIKit

class MesagesListTVC: UITableViewCell {

    //MARK: - Outlets :
    @IBOutlet var profileImgVIew : UIImageView!
    @IBOutlet var userNameLbl :UILabel!
    @IBOutlet var messagePreViewLbl : UILabel!
    @IBOutlet var timeLbl : UILabel!
    @IBOutlet var activeView : UIView! {
        didSet {
            activeView.layer.borderWidth = 1.0
            activeView.layer.borderColor = UIColor.white.cgColor
        }
    }
    @IBOutlet var pendingMessagesLbl : UILabel!
    @IBOutlet var pendingMsgView : UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension MesagesListTVC {
    class func prepareToRegisterCells(_ sender : UITableView) {
        sender.register(UINib(nibName: "MesagesListTVC", bundle: nil), forCellReuseIdentifier: "MesagesListTVC")
    }
}
