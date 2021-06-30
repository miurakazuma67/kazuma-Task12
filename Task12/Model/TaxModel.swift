//
//  TaxModel.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/06.
//

import UIKit

// Using 'class' keyword for protocol inheritance is deprecated; use 'AnyObject' instead
protocol TaxModelDelegate: AnyObject {
    func didChange(includingTax: Int)
}

final class TaxModel {
    weak var delegate: TaxModelDelegate?

    func loadInitialTaxRate() -> Int {
        UserDefaults.standard.integer(forKey: "TaxRate")
    }

    func set(excludingTax: Int, consumptionTax: Double) {
        UserDefaults.standard.set(consumptionTax, forKey: "TaxRate")

        let taxMoney = Double(excludingTax) * consumptionTax
        let includingTax = excludingTax + Int(taxMoney) / 100
        delegate?.didChange(includingTax: includingTax)
    }
}
