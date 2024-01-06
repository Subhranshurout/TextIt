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
    
}
