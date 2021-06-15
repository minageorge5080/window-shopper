//
//  Wage.swift
//  window-shopper
//
//  Created by Minaroid on 10/06/2021.
//

import Foundation

class Wage {

    class func gethours(forWage wage : Double, andPrice price :Double) -> Int {
        return Int(ceil(price / wage) )
    }
}
