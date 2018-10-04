//
//
//  Pods
//
//  Created by Ajiejoy on 05/09/18 with love and sweet
//  Contact me on self.ajiejoy@gmail.com
//  Copyright © 2017 Ajiejoy. All rights reserved.
 

public extension UIColor {

  
    /// Create Color From Hex String
    ///
    /// - Parameters:
    ///   - hexString: Hex String "#FFFFFF" or "FFFFFF" directly
    ///   - alpha: CGFloat of Alpha from 0.0 to 1.0 (default is 1.0)
    convenience init(hexString: String, alpha: CGFloat = 1.0) {
        let hexString: String = hexString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        self.init(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    convenience init(R:Int, G:Int, B:Int, alpha:CGFloat = 1.0 ) {
        self.init(red:CGFloat(R/255), green:CGFloat(G/255), blue:CGFloat(B/255), alpha:alpha)
    }
    
    
    /// Create lighter Color.
    ///
    /// - Parameter percentage: CGFloat of percentage = 0.0 to 1.0 (default is 0.3)
    /// - Returns: lighter Color.
    func lighter(by percentage: CGFloat = 0.3) -> UIColor {
        return self.adjust(by: abs(percentage) )
    }
    
    
    /// Create darker Color.
    ///
    /// - Parameter percentage: CGFloat of percentage = 0.0 to 1.0 (default is 0.3)
    /// - Returns: Darket Color
    func darker(by percentage: CGFloat = 0.3) -> UIColor {
        return self.adjust(by: -1 * abs(percentage) )
    }
    
    func adjust(by percentage: CGFloat = 0.3) -> UIColor {
        var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
        if self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) {
            return UIColor(red: min(red + percentage, 1.0),
                           green: min(green + percentage, 1.0),
                           blue: min(blue + percentage, 1.0),
                           alpha: alpha)
        } else {
            return .green
        }
    }
    
    /// return Color to Hex String #FFFFFF
    var toHexString : String {
        var r:CGFloat = 0
        var g:CGFloat = 0
        var b:CGFloat = 0
        var a:CGFloat = 0
        getRed(&r, green: &g, blue: &b, alpha: &a)
        let rgb:Int = (Int)(r*255)<<16 | (Int)(g*255)<<8 | (Int)(b*255)<<0
        return String(format:"#%06x", rgb)
    }
    
}

