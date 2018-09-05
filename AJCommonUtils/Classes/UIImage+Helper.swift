//
//
//  Pods
//
//  Created by Ajiejoy on 05/09/18 with love and sweet
//  Contact me on self.ajiejoy@gmail.com
//  Copyright © 2017 Ajiejoy. All rights reserved.
 

extension UIImage {
    
    convenience init(QRcode: String){
        guard let data = QRcode.data(using: .isoLatin1) else {
            self.init()
            return
        }
        
        let qrfilter = CIFilter(name: "CIQRCodeGenerator")
        qrfilter?.setValue(data, forKey: "inputMessage")
        qrfilter?.setValue("Q", forKey: "inputCorrectionLevel")
        let img = qrfilter?.outputImage?.transformed(by: CGAffineTransform(scaleX: 5, y: 5))
        self.init(ciImage: img!)
    }
    
    func tintColor(color:UIColor) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(self.size, false, UIScreen.main.scale);
        let context = UIGraphicsGetCurrentContext();
        
        context?.translateBy(x: 0, y: self.size.height)
        context?.scaleBy(x: 1.0, y: -1.0)
        
        let rect = CGRect(x: 0, y: 0, width: self.size.width, height: self.size.height)
        
        // draw alpha-mask
        context?.setBlendMode(.normal)
        context?.draw(self.cgImage!, in: rect)
        
        // draw tint color, preserving alpha values of original image
        context?.setBlendMode(.sourceIn)
        color.setFill()
        context?.fill(rect)
        let coloredImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return coloredImage;
    }
    
    func resize(width:CGFloat) -> UIImage?{
        let scale = width / self.size.width
        let height = self.size.height * scale
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width:width, height: height), false, 0);
        self.draw(in: CGRect(x: 0, y: 0, width: width, height: height))
        let img = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return img
    }
}
