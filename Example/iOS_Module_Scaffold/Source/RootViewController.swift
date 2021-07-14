//
//  RootViewController.swift
//  iOS_Module_Scaffold_Example
//
//  Created by Shper on 2021/7/14.
//  Copyright © 2021 Shper. All rights reserved.
//

import Foundation
import UIKit
import TKLogger
import SnapKit

class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        TKLogger.debug("viewDidLoad")
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(self.testButton)
        self.testButton.snp.makeConstraints { (make) in
            make.center.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
        self.testButton.addTarget(self, action: #selector(self.btnClickFun), for: .touchDown)
    }
    
    // MARK: - UI
    fileprivate lazy var testButton: UIButton = {
        let button = UIButton()
        button.setTitle("Start Test", for: .normal)
        button.backgroundColor = UIColor.blue
        
        return button
    }()
    
    // MARK: - Target
    
    @objc func btnClickFun() {
        TKLogger.debug("Start button clicked.")
        // TODO
    }
    
}
