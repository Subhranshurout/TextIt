//
//  SlashVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 02/01/24.
//

import UIKit

class SplashVC: ParentVC {

    var arrCells : [EntryCellType] = EntryScreenType.splash.arrCells
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        registerNibs()
    }
    func registerNibs() {
        SocialTVC.prepareToRegisterCells(myTable)
        ButtonsTVC.prepareToRegisterCells(myTable)
    }
    
}

extension SplashVC :UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCells.count
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if let cell = cell as? SocialTVC {
            cell.parentVC = self
            cell.prepareUI()
        } else if let cell = cell as? ButtonsTVC {
            cell.parentVC = self
            cell.prePareUI()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: arrCells[indexPath.row].entryCellId, for: indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return arrCells[indexPath.row].cellHeight
    }
    
}
