//
//  LanguageProvider.swift
//
//

import Foundation

public class LanguageProvider {
    public static let shared = LanguageProvider()
    
    private let userDefaults = UserDefaults.standard
    private let defaultLanguage = "en"
    
    public var currentLanguage: String {
        get {
            return userDefaults.string(forKey: "AppLanguage") ?? defaultLanguage
        }
        set {
            userDefaults.setValue(newValue, forKey: "AppLanguage")
            userDefaults.setValue([newValue], forKey: "AppleLanguages")
            userDefaults.synchronize()
        }
    }
    
    public func localizedString(forKey key: String) -> String {
        guard let path = Bundle.main.path(forResource: currentLanguage, ofType: "lproj"), let bundle = Bundle(path: path) else {
            return NSLocalizedString(key, comment: "")
        }
        
        return NSLocalizedString(key, bundle: bundle, comment: "")
    }
}
