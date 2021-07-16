//
//  TKLoading.swift
//  TKUi
//
//  Created by Shper on 2020/5/1.
//  Copyright © 2020 Shper. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

open class TKLoading {
    
    static var shared: TKLoading = TKLoading()
    
    var loadingHud: MBProgressHUD?
     
    func show(title: String = "请稍候",
              view: UIView) {
        
        loadingHud?.hide(animated: true)
        
        loadingHud = MBProgressHUD.showAdded(to: view, animated: true)
        
        loadingHud?.mode = .indeterminate
        loadingHud?.animationType = .zoom

        loadingHud?.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        
        loadingHud?.contentColor = UIColor.white
        
        loadingHud?.bezelView.alpha = 0.8
        loadingHud?.bezelView.style = .solidColor
        loadingHud?.bezelView.backgroundColor = UIColor.black
        
        loadingHud?.label.text = title
        loadingHud?.label.textColor = UIColor.white
        
        loadingHud?.removeFromSuperViewOnHide = true
    }
    
    func hide() {
        loadingHud?.hide(animated: true)
    }
    
}
