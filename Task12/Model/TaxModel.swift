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
    internal var includingTax: Int = 0
    private var excludingTax: Int?
    private var consumptionTax: Double?
    
    weak var delegate: calculateDelegate? = nil
    
        func set(_ excludingTax: Int, _ consumptionTax: Double) {
            self.excludingTax = excludingTax
            self.consumptionTax = consumptionTax
        }
    
    func get() -> Int {
        let taxMoney = Double(excludingTax!) * consumptionTax!
        print(taxMoney)
        let includingTax = excludingTax! + Int(taxMoney)/100
        return includingTax
    }
    
}
