//
//  TaxModel.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/06.
//

import UIKit

final class TaxModel {
    internal var includingTax: Int = 0
    var excludingTax: Int = 0
    var consumptionTax: Double = 0.0
    
    //データの変更を監視するためにdelegateを設定
    weak var delegate: calculateDelegate? 
    
    func set(_ excludingTax: Int, _ consumptionTax: Double) {
        self.excludingTax = excludingTax
        self.consumptionTax = consumptionTax
    }
    
    func get() -> Int {
        let includingTax = self.excludingTax + Int(self.consumptionTax*0.01)
        return includingTax
    }
}
