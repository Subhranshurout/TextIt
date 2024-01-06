//
//  LoginVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 02/01/24.
//

import UIKit

class LoginVC: ParentVC {

    var arrCells : [EntryCellType] = EntryScreenType.logIn.arrCells
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerNibs()
    }
    

    func registerNibs() {
        TextFieldTVC.prepareToRegisterCells(myTable)
        SocialTVC.prepareToRegisterCells(myTable)
        ButtonsTVC.prepareToRegisterCells(myTable)
    }

}

extension LoginVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCells.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        let cellType = arrCells[indexPath.row]
        if let cell = cell as? SocialTVC {
            cell.parentVC = self
            cell.prepareUI()
        } else if let cell = cell as? ButtonsTVC {
            cell.parentVC = self
            cell.prePareUI()
        } else if let cell = cell as? TextFieldTVC {
            cell.preViewLbl.text = cellType.cellTitle
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: arrCells[indexPath.row].entryCellId, for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return arrCells[indexPath.row].cellHeight
    }
}
