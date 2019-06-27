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

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        _ = UIColor.gray.darker(by: 0.4)
        print(UIDevice.modelName)
        if UIDevice.isHaveNotch {
            print("iphone have notch")
        }
        else{
            print("iphone doesnt have notch")
        }
        
        imageView.image = UIImage(named: "ic_camera")?.tintColor(.red)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}

