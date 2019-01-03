//
//  UIView+Helper.swift
//
//  Created for Pods in 2019
//  Created by Ajiejoy on 03/01/19 with love and sweat
//
//  Reach me on self.ajiejoy@gmail.com
//  Copyright © 2019 Ajiejoy. All rights reserved.
//
 

import UIKit

public extension UIView {
    
    static var identifier: String {
        return NSStringFromClass(self).components(separatedBy: ".").last!
    }
    
    static var nib : UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
}
