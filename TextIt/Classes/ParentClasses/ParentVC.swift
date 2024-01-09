//
//  ParentVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 02/01/24.
//

import UIKit

class ParentVC: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var myTable : UITableView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var mainView : UIView! {
        didSet {
            mainView.layer.cornerRadius = 40.0
        }
    }
    @IBOutlet var roundView : UIView! {
        didSet {
            roundView.layer.cornerRadius = 3
            roundView.isUserInteractionEnabled = true
            roundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(scrollToTop)))
        }
    }
    
    @objc func scrollToTop() {
        myTable.scrollToRow(at: IndexPath(row: 0, section: 0), at: .top, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func parentBack(_ sender : UIButton) {
        navigationController?.popViewController(animated: true)
    }

    func loginBtnClick(with segue : String) {
        performSegue(withIdentifier: segue, sender: nil)
    }
    func smallLoginBtn(with segue : String) {
        performSegue(withIdentifier: segue, sender: nil)
    }
    
}
