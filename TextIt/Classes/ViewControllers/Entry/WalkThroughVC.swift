//
//  WalkThroughVC.swift
//  TextIt
//
//  Created by Subhranhu Sekhar Rout on 02/01/24.
//

import UIKit

class WalkThroughVC: ParentVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        prepareUI()
    }

    func prepareUI() {
        performSegue(withIdentifier: "SplashVC", sender: nil)
    }
}
