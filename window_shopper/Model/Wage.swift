//
//  Wage.swift
//  window_shopper
//
//  Created by more on 07/03/2019.
//  Copyright © 2019 Archailect. All rights reserved.
//

import Foundation
class Wage {
    class func getHours (forWage wage: Double,  andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
