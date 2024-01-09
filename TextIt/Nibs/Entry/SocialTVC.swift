//
//  SocialTVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 03/01/24.
//

import UIKit

class SocialTVC: UITableViewCell {

    @IBOutlet var titleLbl : UILabel!
    @IBOutlet var stackView : UIStackView!
    @IBOutlet var soocialMediaBtn : [UIButton]!
    @IBOutlet var orLbl : UILabel!
    @IBOutlet var aboutPreVwLbl : UILabel!
    @IBOutlet var socialView : UIView!
    @IBOutlet var orLblView : UIView!
    
    @IBOutlet var lineLbl : [UILabel]!
    weak var parentVC: ParentVC!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func socialMediaLogin(_ sender : UIButton) {
        
    }
    
    func prepareUI() {
        switch parentVC {
        case parentVC as SplashVC :
            titleLbl.isHidden = true
            soocialMediaBtn.forEach { btn in
                btn.backgroundColor = UIColor.btnWhite
            }
            aboutPreVwLbl.text = "Our chat app is the perfect way to\nstay connected with friends and family."
            aboutPreVwLbl.textColor = UIColor.preViewWhite
        case parentVC as LoginVC :
            aboutPreVwLbl.text = "Welcome back! Sign in using your social\naccount or email to continue us"
            aboutPreVwLbl.textAlignment = .center
            aboutPreVwLbl.textColor = UIColor.aboutPreView
            soocialMediaBtn.forEach { btn in
                if btn.tag == 2 {
                    btn.setImage(UIImage(named: "appleBlack"), for: .normal)
                }
                orLbl.textColor = UIColor.or
                lineLbl.forEach { lbl in
                    lbl.backgroundColor = UIColor.lines
                }
            }
            
        case parentVC as SignupVC :
            titleLbl.text = "Sign up with Email"
            aboutPreVwLbl.text = "Get chatting with friends and\nfamily today by signing up for our chat app!"
            aboutPreVwLbl.textAlignment = .center
            aboutPreVwLbl.textColor = UIColor.aboutPreView
            aboutPreVwLbl.font = UIFont(name: "Poppins-Light", size: 14)
            socialView.isHidden = true
            orLblView.isHidden = true
        default:
            print("Not")
        }
    }
    
}

extension SocialTVC {
    class func prepareToRegisterCells(_ sender : UITableView) {
        sender.register(UINib(nibName: "SocialTVC", bundle: nil), forCellReuseIdentifier: "SocialTVC")
    }
}
