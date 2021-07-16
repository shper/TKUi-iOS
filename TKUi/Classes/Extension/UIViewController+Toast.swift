//
//  TKViewController.swift
//  TKUi
//
//  Created by Shper on 2020/4/25.
//  Copyright © 2020 Shper. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

// MARK: Toast

public enum ToastDuration: Double {
    case short = 3
    case long = 6
}

public extension UIViewController {

    // 显示 Toast
    func showToast(_ title: String, duration: ToastDuration = .short) {
        TKToast.showToast(title,
                          duration: duration,
                          view: self.view,
                          yOffset: self.view.frame.size.height / 3)
    }
    
}

// MARK: Loading

public extension UIViewController {

    func showLoading() {
        TKLoading.shared.show(view: self.view)
    }
    
    func hideLoading() {
        TKLoading.shared.hide()
    }
    
}

// MARK: Alert

public extension UIViewController {
    
    func showAlert(title: String,
                   message: String,
                   actions: [UIAlertAction]?,
                   completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        actions?.forEach({ (action) in
            alert.addAction(action)
        })
        self.present(alert, animated: true, completion: completion)
    }
    
}
