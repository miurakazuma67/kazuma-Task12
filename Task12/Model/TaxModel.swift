//
//  TaxModel.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/06.
//

import UIKit

protocol calculateDelegate: class {
    func calculateIncludingTax()
}

final class TaxModel {
    internal var includingTax: Int = 0
    var excludingTax: Int = 0
    var consumptionTax: Float = 0.0
    
    //データの変更を監視するためにdelegateを設定
    weak var delegate: calculateDelegate? = nil
    
    func calculate() {
        includingTax = excludingTax + Int(consumptionTax*0.01)
        delegate?.calculateIncludingTax()
    }
}

