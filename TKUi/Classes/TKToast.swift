//
//  TKToast.swift
//  TKUi
//
//  Created by Shper on 2020/4/29.
//  Copyright © 2020 Shper. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

open class TKToast {
    
    // 显示 Toast
    static func showToast(_ title: String,
                          duration: ToastDuration = .short,
                          view: UIView,
                          yOffset: CGFloat = 0) {
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        
        hud.mode = .text
        hud.animationType = .zoomOut
        hud.removeFromSuperViewOnHide = true
        hud.offset.y = yOffset
        hud.hide(animated: true, afterDelay: duration.rawValue)
        
        hud.bezelView.alpha = 0.8
        hud.bezelView.style = .solidColor
        hud.bezelView.backgroundColor = UIColor.black
        hud.bezelView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: hud.bezelView,
                           attribute: .height,
                           relatedBy: .equal,
                           toItem: nil,
                           attribute: .height,
                           multiplier: 1,
                           constant: 45).isActive = true
        
        hud.label.text = title
        hud.label.textColor = UIColor.white
        hud.label.font = UIFont.systemFont(ofSize: 16)
        hud.label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: hud.label,
                                attribute: .height,
                                relatedBy: .equal,
                                toItem: hud.label.superview,
                                attribute: .height,
                                multiplier: 1,
                                constant: 0).isActive = true

    }
    
}
