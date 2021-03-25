//
//  DataManager.swift
//  TestLocalizationShop
//
//  Created by Rodion Molchanov on 25.03.2021.
//

import Foundation
import UIKit

struct DataManager {
    static var shared = DataManager()
    private init() { }
    
    let baseLanguage : Languages = .EN
    var currentLanguage : Languages = .EN
    var currencyDictionary = [Languages: Currency]()
    var productArray = [Product]()

    func getLocalizedProduct(index: Int) -> (description: String, price: Double, image: UIImage, sign: String) {
        let productElement = self.productArray[index]
        guard let currency = currencyDictionary[currentLanguage],
              let name = productElement.name[currentLanguage]
        else {
            return ("", -1, UIImage(), "")
        }
        let price = productElement.price * currency.rate
        let image = productElement.image
        let sign = currency.sign
        return (name, price, image, sign)
    }
    
    

}
