//
//  FillUtils.swift
//  TestLocalizationShop
//
//  Created by Rodion Molchanov on 25.03.2021.
//

import Foundation
import UIKit

func firstFormProductArray() {
    let currencyEn = Currency(sign: "$", code: "UDS", rate: 1)
    DataManager.shared.currencyDictionary[.EN] = currencyEn
    let currencyRu = Currency(sign: "₽", code: "RUB", rate: 76.37)
    DataManager.shared.currencyDictionary[.RU] = currencyRu
    let currencyEu = Currency(sign: "€", code: "EUR", rate: 0.85)
    DataManager.shared.currencyDictionary[.FR] = currencyEu
    
    var newElementName = [Languages: String]()
    newElementName[.EN] = "Notebook Asus"
    newElementName[.RU] = "Ноутбук Asus"
    newElementName[.FR] = "Ordinateur portable Asus"
    var newElement = Product(code: "1123980", name: newElementName, price: 1500, image: UIImage(named: "NotebookSample")!)
    DataManager.shared.productArray.append(newElement)
    
    newElementName = [Languages: String]()
    newElementName[.EN] = "Table lamp Toshiba"
    newElementName[.RU] = "Настольная лампа Toshiba"
    newElementName[.FR] = "Lampe de table Toshiba"
    newElement = Product(code: "1123980", name: newElementName, price: 100, image: UIImage(named: "LampSample")!)
    DataManager.shared.productArray.append(newElement)
}


func fillInterfaceElements() {
    let element = InterfaceElement(name: [.EN: "Title", .RU: "Заголовок", .FR: "Titre"])
    InterfaceManager.shared.elementDict["productTableTitleLabel"] = element
}
