//
//  CustomTableViewCell.swift
//  TestLocalizationShop
//
//  Created by Rodion Molchanov on 25.03.2021.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var itemImageView: UIImageView!
    @IBOutlet var itemDescriptionLabel: UILabel!
    @IBOutlet var itemPriceLabel: UILabel!
    @IBOutlet var itemCurrencyLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func prepareForReuse() {
        self.itemImageView.image = nil
        self.itemDescriptionLabel.text = ""
        self.itemPriceLabel.text = ""
        self.itemCurrencyLabel.text = ""
    }

    func setCellValue(image: UIImage, description: String, price: String, currency: String) {
        self.itemImageView.image = image
        self.itemDescriptionLabel.text = description
        self.itemPriceLabel.text = price
        self.itemCurrencyLabel.text = currency
    }
    
    
}
