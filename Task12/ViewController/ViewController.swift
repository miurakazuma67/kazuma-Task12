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
        didChange()
    }
    
    func setIncludingTax(_ excludingTax: Int, _ consumptionTax: Double) {
        taxModel.set(excludingTax, consumptionTax)
    }

    func getIncludingTax() -> Int {
        let includingTax = taxModel.get()
        return includingTax
    }
    
    @IBAction func calculate(_ sender: Any) {
        didChange()
    }
    
    func didChange() {
        self.totalLabel.text = String(taxModel.includingTax)
    }
}

