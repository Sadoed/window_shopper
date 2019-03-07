//
//  CurrencyTextField.swift
//  window_shopper
//
//  Created by more on 05/03/2019.
//  Copyright © 2019 Archailect. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2,
                                                  width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.85292644, green: 0.85292644, blue: 0.85292644, alpha: 0.7971494932)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.clipsToBounds = true
        currencyLabel.layer.cornerRadius = 5.0
        let formater = NumberFormatter()
        formater.numberStyle = .currency
        formater.locale = .current
        currencyLabel.text = formater.currencySymbol
        addSubview(currencyLabel)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    func customizeView() {
        
    backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
    layer.cornerRadius = 5.0
    textAlignment = .center
    
    clipsToBounds = true
        
    if let p = placeholder {
        let place = NSAttributedString(string: placeholder!,
                                       attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
  }
}
