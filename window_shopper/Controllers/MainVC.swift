//
//  ViewController.swift
//  window_shopper
//
//  Created by more on 05/03/2019.
//  Copyright © 2019 Archailect. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var priceText: CurrencyTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0,
                                                width: view.frame.size.width, height: 60))
        
        calcButton.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate),
                             for: .touchUpInside)
        
        wageText.inputAccessoryView = calcButton
        priceText.inputAccessoryView = calcButton
    }

    @objc func calculate() {
        print("We got here")
    }
    
}

