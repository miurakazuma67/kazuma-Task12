//
//  TaxModel.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/06.
//

import UIKit

protocol calculateDelegate: class {
    func didChange()
}

final class TaxModel {
    internal var includingTax: Int?
    private var excludingTax: Int?
    private var consumptionTax: Double?
    
    weak var delegate: calculateDelegate? = nil
    
        func set(_ excludingTax: Int, _ consumptionTax: Double) {
            self.excludingTax = excludingTax
            self.consumptionTax = consumptionTax
            delegate?.didChange()
        }
    
    func get() -> Int {
        let includingTax = excludingTax ?? 0 + Int((consumptionTax ?? 0.0 * 0.01) )
        return includingTax
        delegate?.didChange()
    }
    
}
