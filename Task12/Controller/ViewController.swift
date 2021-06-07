//
//  ViewController.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/02.
//

//  Created by 三浦　一真 on 2021/06/02.
//

import UIKit

final class ViewController: UIViewController {
    var taxModel: TaxModel? {
        didSet {
            registerModel()
        }
    }
    private(set) var myView: MyView = MyView()
    
    override func loadView() {
        view = myView
    }
    deinit {
        taxModel?.notificatonCenter.removeObserver(self)
    }
    
    private func registerModel() {
        guard let model = taxModel else { return }
        
        myView.includingTaxLabel.text = model.includingTax.description
        myView.culculateButton.addTarget(self, action: #selector(onCulculateButtonTapped), for: .touchUpInside)
    }

    @objc func onCulculateButtonTapped(_ excludingTax: Int, _ consumptionTax: Float) {
        let excludingTax = Int(myView.excludingTaxTextField.text ?? "") ?? 0
        let consumptionTax = Float(myView.consumptionTaxTextField.text ?? "") ?? 0
        taxModel?.calculateIncludingTax(excludingTax, consumptionTax)
        myView.includingTaxLabel.text = String(taxModel?.includingTax ?? 0)
    }
    
}

