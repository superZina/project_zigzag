//
//  floatTextField.swift
//  projecy_zigzag
//
//  Created by 이진하 on 2020/05/26.
//  Copyright © 2020 이진하. All rights reserved.
//

import UIKit

class floatTextField: UITextField {
    var floatingLabel: UILabel = UILabel(frame: CGRect.zero) // Label
    var floatingLabelHeight: CGFloat = 14 // Default height
    var changedText:String = ""
    var originText:String = ""
    @IBInspectable
    var _placeholder: String? // we cannot override 'placeholder'
    @IBInspectable
    var floatingLabelColor: UIColor = UIColor.black {
        didSet {
            self.floatingLabel.textColor = floatingLabelColor
            self.setNeedsDisplay()
        }
    }
    @IBInspectable
    var activeBorderColor: UIColor = UIColor.blue
    @IBInspectable
    var floatingLabelFont: UIFont = UIFont.systemFont(ofSize: 14) {
        didSet {
            self.floatingLabel.font = self.floatingLabelFont
            self.font = self.floatingLabelFont
            self.setNeedsDisplay()
        }
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self._placeholder = (self._placeholder != nil) ? self._placeholder : placeholder // Use our custom placeholder if none is set
        placeholder = self._placeholder // make sure the placeholder is shown
        self.floatingLabel.text = self.originText
        self.floatingLabel = UILabel(frame: CGRect.zero)
        self.floatingLabel.textColor = floatingLabelColor
        self.floatingLabel.font = floatingLabelFont
        self.floatingLabel.layer.backgroundColor = UIColor.white.cgColor
        self.floatingLabel.translatesAutoresizingMaskIntoConstraints = false
        self.floatingLabel.clipsToBounds = true
        self.floatingLabel.frame = CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.floatingLabelHeight)
        self.layer.borderColor = self.activeBorderColor.cgColor
        self.addSubview(self.floatingLabel)
        self.floatingLabel.bottomAnchor.constraint(equalTo:
            self.topAnchor, constant: -10).isActive = true
        

    }
    
    @objc func endEditFloatingLabel() {
        if self.text != "" {
            self.floatingLabel.textColor = UIColor.systemGray4
        }
        self.setNeedsDisplay()
    }
    
}
