//
//  ViewController.swift
//  AJCommonUtils
//
//  Created by ajijoyo on 09/05/2018.
//  Copyright (c) 2018 ajijoyo. All rights reserved.
//

import UIKit
import AJCommonUtils


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = UIColor.gray.darker(by: 0.4)
        
        if UIDevice.isIphoneX {
            print("iphone x")
        }
        
        let image = UIImage(QRcode: "qrcode")
        image.tintColor(color: .red)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

