//
//  ViewController.swift
//  TestLocalizationShop
//
//  Created by Rodion Molchanov on 25.03.2021.
//

import UIKit

class ProductViewController: UIViewController {
    
    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let reuseIdentifier = "CustomCellIdentifier"
    
    func setLocalizationInterface() {
        self.titleLabel.text = InterfaceManager.shared.getLocalizedElementName(ident: "productTableTitleLabel", lang: DataManager.shared.currentLanguage)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setLocalizationInterface()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        firstFormProductArray()
        fillInterfaceElements()
        
        self.productTableView.delegate = self
        self.productTableView.dataSource = self
        self.productTableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: self.reuseIdentifier)
    }


    func setCurrentLang(lang: Languages) {
        DataManager.shared.currentLanguage = lang
        setLocalizationInterface()
        self.productTableView.reloadData()
    }
    

    @IBAction func pressEnButton(_ sender: UIButton) {
        setCurrentLang(lang: .EN)
    }
    
    @IBAction func pressRuButton(_ sender: UIButton) {
        setCurrentLang(lang: .RU)
    }
    
    @IBAction func pressFrButton(_ sender: UIButton) {
        setCurrentLang(lang: .FR)
    }
    
    
}


extension ProductViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataManager.shared.productArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: self.reuseIdentifier, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
  
        
        var description = String()
        var price = Double()
        var image = UIImage()
        var sign = String()
        (description, price, image, sign) = DataManager.shared.getLocalizedProduct(index: indexPath.row)
        
        cell.setCellValue(image: image, description: description, price: String(price), currency: sign)
        return cell
    }
    
    
}


