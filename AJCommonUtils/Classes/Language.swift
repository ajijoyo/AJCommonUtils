//
//
//  Pods
//
//  Created by Ajiejoy on 05/09/18 with love and sweet
//  Contact me on self.ajiejoy@gmail.com
//  Copyright © 2017 Ajiejoy. All rights reserved.


extension Notification.Name {
    static let languageDidChanged = Notification.Name("AJCommonUtils.language-did-changed")
}

public class Language {
    
    //default is english
    public static func setDefaultLocale(language : String = "en"){
        if let locale = getSelectedLocale {
            setLocale(language: locale)
        }
        else{
            setLocale(language: language)
        }
    }
    
    public static func setLocale(language : String){
        if let selected = getSelectedLocale {
            if language == selected { return }
        }
        NotificationCenter.default.post(name: .languageDidChanged, object: nil)
        Bundle.setLanguage(language)
    }
    
    public static var getSelectedLocale : String? {
        return Bundle.selectedLanguage()
    }
    
}

public extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
