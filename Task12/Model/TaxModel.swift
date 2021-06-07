//
//  TaxModel.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/06.
//

import UIKit

final class TaxModel {
    static let notificationName = "TaxModelChanged"
    
    let notificatonCenter = NotificationCenter()
    
    private(set) var includingTax = 0 {
        didSet {
            notificatonCenter.post(name: .init(rawValue: TaxModel.notificationName),
                                   object: includingTax)
        }
    }
    func calculateIncludingTax(_ excludingTax: Int, _ consumptionTax: Float) {
        includingTax = excludingTax + Int(Float(excludingTax) * consumptionTax * 0.01)
    }
    
}

