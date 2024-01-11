//
//  SettingsVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 08/01/24.
//

import UIKit

class SettingsVC: ParentVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    func prepareUI() {
        SettingsHeaderTVC.prepareToRegisterCells(myTable)
        SettingsItemsCell.prepareToRegisterCells(myTable)
    }
}

extension SettingsVC : UITableViewDelegate , UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : 15
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return indexPath.section == 0 ? tableView.dequeueReusableCell(withIdentifier: "SettingsHeaderTVC", for: indexPath) : tableView.dequeueReusableCell(withIdentifier: "SettingsItemsCell", for: indexPath)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.section == 0 ? 80 : 76
    }
}
