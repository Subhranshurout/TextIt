//
//  ButtonsTVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 04/01/24.
//

import UIKit

class ButtonsTVC: UITableViewCell {

    @IBOutlet var loginBtn : UIButton!
    @IBOutlet var stackView : UIStackView!
    @IBOutlet var existingAcntLbl : UILabel!
    @IBOutlet var smallLoginBtn : UIButton!
    
    weak var parentVC : ParentVC!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func prePareUI() {
        switch parentVC {
        case parentVC as SplashVC :
            loginBtn.backgroundColor = UIColor.signUP
            loginBtn.layer.cornerRadius = 16
            layer.masksToBounds = true
            
            
        case parentVC as LoginVC :
            loginBtn.titleLabel?.font = UIFont(name: "Poppins-Bold", size: 16)
            loginBtn.backgroundColor = UIColor.title
            loginBtn.layer.cornerRadius = 16
            layer.masksToBounds = true
            loginBtn.setTitle("Log in", for: .normal)
            
        default:
            print("Not")
        }
    }
    
    @IBAction func loginBtnClick(_ sender : UIButton) {
        switch parentVC {
        case parentVC as SplashVC :
            parentVC.loginBtnClick(with: "LoginVC")
        default:
            print("Not")
        }
    }
    @IBAction func smallLoginBtnClick (_ sender : UIButton) {
//        switch parentVC {
//        case parentVC as SplashVC :
//            
//            
//        default:
//            print("Not")
//        }
    }
    
}

extension ButtonsTVC {
    class func prepareToRegisterCells(_ sender : UITableView) {
        sender.register(UINib(nibName: "ButtonsTVC", bundle: nil), forCellReuseIdentifier: "ButtonsTVC")
    }
}
