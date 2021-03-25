//
//  Product.swift
//  TestLocalizationShop
//
//  Created by Rodion Molchanov on 25.03.2021.
//

import Foundation
import UIKit

struct Product {
    var code: String
    var name : Dictionary <Languages, String>
    var price: Double
    var image: UIImage
}
