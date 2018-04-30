//
//  RoundedView.swift
//  GetHealthy
//
//  Created by Mauricio Figueroa on 4/29/18.
//  Copyright © 2018 Mauricio Figueroa. All rights reserved.
//

import Foundation

import UIKit


@IBDesignable
class RoundedView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 8.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}



