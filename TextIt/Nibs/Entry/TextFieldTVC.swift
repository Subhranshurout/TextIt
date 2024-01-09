//
//  TextFieldTVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 03/01/24.
//

import UIKit

class TextFieldTVC: UITableViewCell {

    @IBOutlet var preViewLbl : UILabel!
    @IBOutlet var txtField: UITextField!
    
    weak var parentVC : ParentVC!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}

extension TextFieldTVC {
    class func prepareToRegisterCells(_ sender : UITableView) {
        sender.register(UINib(nibName: "TextFieldTVC", bundle: nil), forCellReuseIdentifier: "TextFieldTVC")
    }
}
