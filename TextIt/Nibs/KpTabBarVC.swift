//
//  KpTabBarVC.swift
//  CustomTabBar
//
//  Created by Yudiz-subhranshu on 03/11/23.
//

import UIKit

class KpTabBarVC: UITabBarController {

    @IBOutlet var tabbarView: UIView!
    @IBOutlet var btnTab: [UIButton]!
    @IBOutlet var imgTab: [UIImageView]!
    @IBOutlet var lblTab: [UILabel]!
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.isHidden = true
//        vwActive.isHidden = true
        addCustomTabBar()
        prepareUI()
        setSelectedTab(idx: 0)
        _defaultCenter.addObserver(self, selector: #selector(self.prepareUI), name: NSNotification.Name("CountUpdate"), object: nil)
        _appDelegator.tabBarLoaded?()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnTabChangeTap(_ sender: UIButton) {
        if selectedIndex == sender.tag {
            _defaultCenter.post(name: _scrollToTop, object: nil)
        } else {
            setSelectedTab(idx: sender.tag)
        }
    }
    func setSelectedTab(idx: Int) {
        imgTab.forEach { img in
//            img.isHidden = img.tag == idx
            img.tintColor = img.tag == idx ? UIColor.sTabBar: UIColor.dTabBar
        }
        lblTab.forEach { lbl in
//            lbl.isHidden = lbl.tag != idx
            lbl.textColor = lbl.tag == idx ? UIColor.sTabBar: UIColor.dTabBar
        }

        selectedIndex = idx
        prepareUI()
    }
    @objc func prepareUI() {
//        if (isAnnocePush) && selectedIndex != 3 {
//            vwCount.isHidden = false
//        } else {
//            vwCount.isHidden = true
//        }
    }
    fileprivate func addCustomTabBar() {
        
        let home = UIStoryboard(name: "Message", bundle: nil).instantiateInitialViewController()!
        let slip = UIStoryboard(name: "Calls", bundle: nil).instantiateInitialViewController()!
        let directory = UIStoryboard(name: "Contact", bundle: nil).instantiateInitialViewController()!
        let notification = UIStoryboard(name: "Settings", bundle: nil).instantiateInitialViewController()!
        
        let tabBarView = Bundle.main.loadNibNamed("TabBarView", owner: self, options: nil)?.first as! UIView
        self.viewControllers = [home, slip, directory, notification]
        tabBarView.frame = CGRect(x: 0, y: (_screenSize.height) - (_bottomBarHeight + (UIDevice.current.hasNotch ? 55 : 55)), width: _screenSize.width, height: (UIDevice.current.hasNotch ? 55 : 55) + _bottomBarHeight)
        tabBarView.layer.shadowOffset = CGSize(width: 0, height: 0)
        tabBarView.layer.shadowRadius = 2
        tabBarView.layer.shadowColor = UIColor.black.cgColor
        tabBarView.layer.shadowOpacity = 0.3
        self.view.addSubview(tabBarView)
        self.selectedIndex = 0
    }

}
