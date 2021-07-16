//
//  TKButton.swift
//  TKUi
//
//  Created by Shper on 2021/7/14.
//

import Foundation
import UIKit

open class TKButton: UIButton {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupStyle()
    }

    public required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupStyle()
    }
    
    public convenience init(frame: CGRect, hex: String?, radius: CGFloat?) {
        self.init(frame: frame)
        setupStyle(hex: hex, radius: radius)
    }
    
    private func setupStyle(hex: String? = "#FF0B82F1", radius: CGFloat? = 10) {
        self.backgroundColor = UIColor(hex: hex ?? "#FF0B82F1")
        self.layer.cornerRadius = radius ?? 10
    }

}
