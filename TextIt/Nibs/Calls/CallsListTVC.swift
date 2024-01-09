//
//  CallsListTVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 09/01/24.
//

import UIKit

class CallsListTVC: UITableViewCell {

    //MARK: - Outlets
    @IBOutlet var profileImgView : UIImageView!
    @IBOutlet var callTypeImgView : UIImageView!
    @IBOutlet var personName : UILabel!
    @IBOutlet var callTime : UILabel!
    @IBOutlet var callButton : [UIButton]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}

extension CallsListTVC {
    class func prepareToRegisterCells(_ sender : UITableView) {
        sender.register(UINib(nibName: "CallsListTVC", bundle: nil), forCellReuseIdentifier: "CallsListTVC")
    }
}
