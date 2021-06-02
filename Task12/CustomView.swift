//
//  CustomView.swift
//  Task12
//
//  Created by 三浦　一真 on 2021/06/02.
//

import UIKit

class CustomView: UIView {
    
    @IBOutlet weak var excludingTaxTextField: UITextField!
    
    @IBOutlet weak var consumptionTaxTextField: UITextField!
    
    @IBOutlet weak var includingTaxTextField: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }
    
    private func loadNib() {
        if let view = Bundle.main.loadNibNamed("CustomView", owner: self, options: nil)?.first as? UIView {
            view.frame = self.bounds
            self.addSubview(view)
        }
    }

}
