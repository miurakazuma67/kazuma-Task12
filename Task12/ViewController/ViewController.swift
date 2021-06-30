//
//  ViewController.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/02.
//



import UIKit

final class ViewController: UIViewController, TaxModelDelegate {
    
    @IBOutlet private weak var excludingTaxTextField: UITextField!
    @IBOutlet private weak var consumptionTaxTextField: UITextField!
    @IBOutlet private weak var totalLabel: UILabel!
    
    private let taxModel = TaxModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taxModel.delegate = self
        let taxRate = taxModel.loadInitialTaxRate()
        self.consumptionTaxTextField.text = String(taxRate)
    }
    
    @IBAction func calculate(_ sender: Any) {
        guard let excludingTax = Int(excludingTaxTextField.text!) else { return }
        guard let consumptionTax = Double(consumptionTaxTextField.text!) else { return }

        taxModel.set(excludingTax: excludingTax, consumptionTax: consumptionTax)
    }
    
    func didChange(includingTax: Int) {
        totalLabel.text = String(includingTax)
    }
}
