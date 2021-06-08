//
//  ViewController.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/02.
//

//  Created by 三浦　一真 on 2021/06/02.
//

import UIKit

final class ViewController: UIViewController, calculateDelegate {
    
    @IBOutlet private weak var excludingTaxTextField: UITextField!
    @IBOutlet private weak var consumptionTaxTextField: UITextField!
    @IBOutlet private weak var totalLabel: UIStackView!
    
    let taxModel = TaxModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateIncludingTax()
        taxModel.delegate = self
    }
    
    func calculateIncludingTax() {
        let excludingTax = Int(excludingTaxTextField.text ?? "") ?? 0
        let consumptionTax = Float(consumptionTaxTextField.text ?? "") ??  0.0
        
    }

}

