//
//  mainViewController.swift
//  iOS-sidemenu
//
//  Created by Paul Ku on 2016/7/28.
//  Copyright © 2016年 Paul Ku. All rights reserved.
//

import UIKit
import Google_Material_Design_Icons_Swift

class mainViewController: UIViewController {
    
    @IBOutlet weak var expandBarBtn: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        expandBarBtn.setGMDIcon(GMDType.GMDList, iconSize: 24)
        expandBarBtn.tintColor = UIColor.redColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func expandSideMenu(sender: AnyObject) {
        self.slideMenuController()?.openLeft()
    }
}
