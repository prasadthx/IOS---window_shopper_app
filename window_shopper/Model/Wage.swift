//
//  Wage.swift
//  window_shopper
//
//  Created by Prasad Maruti Zore on 13/07/20.
//  Copyright © 2020 Legacy.inc. All rights reserved.
//

import Foundation

class Wage{
    class func gethours(forWage wage:Double, andPrice price:Double) -> Int {
        return Int(ceil(price / wage))
    }
}
