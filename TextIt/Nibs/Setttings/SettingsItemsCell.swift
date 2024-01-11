//
//  SettingsItemsCell.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 11/01/24.
//

import UIKit

class SettingsItemsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

extension SettingsItemsCell  {
    class func prepareToRegisterCells(_ sender : UITableView) {
        sender.register(UINib(nibName: "SettingsItemsCell", bundle: nil), forCellReuseIdentifier: "SettingsItemsCell")
    }
}
