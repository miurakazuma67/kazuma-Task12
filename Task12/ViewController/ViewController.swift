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
    @IBOutlet private weak var totalLabel: UILabel!
    
    let taxModel = TaxModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taxModel.delegate = self
    }
    
    @IBAction func calculate(_ sender: Any) {
        didChange()
    }
    
    func didChange() {
        let excludingTax = Int(excludingTaxTextField.text ?? "")
        let consumptionTax = Double(consumptionTaxTextField.text ?? "")
        
        taxModel.set(excludingTax ?? 0, consumptionTax ?? 0.0)
        let includingTax = taxModel.get()
        
        self.totalLabel.text = String(includingTax)
    }
}

