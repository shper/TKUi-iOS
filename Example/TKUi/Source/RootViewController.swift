//
//  RootViewController.swift
//  TKUi_Example
//
//  Created by Shper on 2021/7/14.
//  Copyright © 2021 Shper. All rights reserved.
//

import Foundation
import UIKit
import TKLogger
import SnapKit
import TKUi

class RootViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TKLogger.debug("viewDidLoad")
        
        self.view.backgroundColor = UIColor.white
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        
        self.view.addSubview(self.titlebarButton)
        self.titlebarButton.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-150)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        self.titlebarButton.addTarget(self, action: #selector(self.titlebarBtnClick), for: .touchDown)
        
        self.view.addSubview(self.loadingButton)
        self.loadingButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.titlebarButton.snp.bottom).offset(30)
            make.left.equalTo(self.titlebarButton.snp.left)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        self.loadingButton.addTarget(self, action: #selector(self.loadingBtnClick), for: .touchDown)
        
        self.view.addSubview(self.toastButton)
        self.toastButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.loadingButton.snp.bottom).offset(30)
            make.left.equalTo(self.loadingButton.snp.left)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        self.toastButton.addTarget(self, action: #selector(self.toastBtnClick), for: .touchDown)
        
        self.view.addSubview(self.alertButton)
        self.alertButton.snp.makeConstraints { (make) in
            make.top.equalTo(self.toastButton.snp.bottom).offset(30)
            make.left.equalTo(self.toastButton.snp.left)
            make.width.equalTo(300)
            make.height.equalTo(50)
        }
        self.alertButton.addTarget(self, action: #selector(self.alertBtnClick), for: .touchDown)
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        TKLogger.debug("viewWillAppear")
        
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        TKLogger.debug("viewDidAppear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        TKLogger.debug("viewWillDisappear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        TKLogger.debug("viewDidDisappear")
    }
    
    // MARK: - UI
    fileprivate lazy var titlebarButton: TKButton = {
        let button = TKButton()
        button.setTitle("Start Titlebar", for: .normal)
        return button
    }()
    
    fileprivate lazy var loadingButton: TKButton = {
        let button = TKButton()
        button.setTitle("Start Loading", for: .normal)
        return button
    }()
    
    fileprivate lazy var toastButton: TKButton = {
        let button = TKButton()
        button.setTitle("Start toast", for: .normal)
        return button
    }()
    
    fileprivate lazy var alertButton: TKButton = {
        let button = TKButton()
        button.setTitle("Start Alert", for: .normal)
        return button
    }()
    
    // MARK: - Target
    @objc func titlebarBtnClick() {
        TKLogger.debug("Start title bar clicked.")
        self.navigationController?.pushViewController(TtitleBarViewController(), animated: true)
    }
    
    @objc func loadingBtnClick() {
        TKLogger.debug("Start loading clicked.")
        self.showLoading()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.hideLoading()
        }
    }
    
    @objc func toastBtnClick() {
        TKLogger.debug("Start toast clicked.")
        self.showToast("I'm a toast.")
    }
    
    @objc func alertBtnClick() {
        TKLogger.debug("Start alert clicked.")
        self.showAlert(title: "通知", message: "请确定开启定位权限", actions: [
            UIAlertAction(title: "开启", style: .default, handler: { action in
                TKLogger.debug("用户同意开启定位权限")
        }),
            UIAlertAction(title: "取消", style: .cancel, handler: { action in
                TKLogger.debug("用户拒绝开启定位权限")
            })
        ])
    }
    
}
