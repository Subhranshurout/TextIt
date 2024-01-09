//
//  CallsVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 08/01/24.
//

import UIKit

class CallsVC: ParentVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myTable.contentInset = UIEdgeInsets(top: -8, left: 0, bottom: 70, right: 0)
        prepareUI()
    }
    
    func prepareUI() {
        CallsListTVC.prepareToRegisterCells(myTable)
    }

}

//MARK: - TableView Delegate methods
extension CallsVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 21
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "CallsListTVC", for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
}
