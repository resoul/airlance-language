//
//  LanguageViewModel.swift
//
//

import Foundation

public class LanguageViewModel: NSObject {
    public var languages: [Language] = [
        Language(id: "en", original: "English", name: "English"),
        Language(id: "uk", original: "Українська", name: "Ukrainian"),
        Language(id: "de", original: "Deutsch", name: "German"),
        Language(id: "es", original: "Español", name: "Spanish"),
        Language(id: "it", original: "Italiano", name: "Italian"),
        Language(id: "pl", original: "Polski", name: "Polish"),
        Language(id: "ru", original: "Русский", name: "Russian"),
        Language(id: "fr", original: "Français", name: "French")
    ]
    
    let sectioTitle: String = "language.section"
}
