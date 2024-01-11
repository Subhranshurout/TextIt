//
//  SettingsHeaderTVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 11/01/24.
//

import UIKit

class SettingsHeaderTVC: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension SettingsHeaderTVC {
    class func prepareToRegisterCells(_ sender : UITableView) {
        sender.register(UINib(nibName: "SettingsHeaderTVC", bundle: nil), forCellReuseIdentifier: "SettingsHeaderTVC")
    }
}
