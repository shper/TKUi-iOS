//
//  TtitleBarViewController.swift
//  TKUi_Example
//
//  Created by Shper on 2021/7/16.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation
import UIKit
import TKLogger

class TtitleBarViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TKLogger.debug("viewDidLoad")
        
        self.view.backgroundColor = UIColor.white
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }

}
