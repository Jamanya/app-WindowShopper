//
//  Wage.swift
//  WindowShopper
//
//  Created by James Richardson on 8/7/17.
//  Copyright © 2017 Jamanya Apps. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
