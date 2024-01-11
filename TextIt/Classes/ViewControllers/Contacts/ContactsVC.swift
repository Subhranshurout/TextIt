//
//  ContactsVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 08/01/24.
//

import UIKit

class ContactsVC: ParentVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        prepareUI()
    }

    func prepareUI() {
        ContactsListTVC.prepareToRegisterCells(myTable)
    }
}

extension ContactsVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 21
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "ContactsListTVC", for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 76
    }
}
