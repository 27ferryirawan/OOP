//
//  CakeModel.swift
//  NanoChallenge1Git
//
//  Created by Ferry Irawan on 15/05/19.
//  Copyright © 2019 Ferry Irawan. All rights reserved.
//

import Foundation


class CakeModel {
    
    var cakeName: String
    var cakePrice: Int
    var cakeQty: Int
    var currentPrice: Int
    
    init(cakeName: String, cakePrice: Int, cakeQty: Int, currentPrice: Int) {
        self.cakeName = cakeName
        self.cakePrice = cakePrice
        self.cakeQty = cakeQty
        self.currentPrice = currentPrice
    }
    
    func totalPrice(){
        cakeQty += 1
        currentPrice = cakePrice * cakeQty
    }
    
}
