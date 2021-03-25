//
//  InterfaceManager.swift
//  TestLocalizationShop
//
//  Created by Rodion Molchanov on 25.03.2021.
//

import Foundation

struct InterfaceManager {
    static var shared = InterfaceManager()
    private init() { }
    
    var elementDict = [String: InterfaceElement]()
    
    func getLocalizedElementName(ident: String, lang: Languages) -> String {
        guard let element = self.elementDict[ident], let name = element.name[lang]
        else {
            return ident
        }
        return name
    }
}
