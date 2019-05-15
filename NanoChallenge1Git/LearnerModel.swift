
//
//  LeanerModel.swift
//  NanoChallenge1Git
//
//  Created by Ferry Irawan on 15/05/19.
//  Copyright © 2019 Ferry Irawan. All rights reserved.
//

import Foundation

class LearnerModel {
   
    var name: String
    var age: Int
    var height: Float
    var imageProfile: String
    
    init(learnerName: String, learnerAge: Int, learnerHeight: Float, learnerImageProfile: String) {
        self.name = learnerName
        self.age = learnerAge
        self.height = learnerHeight
        self.imageProfile = learnerImageProfile
    }
    
    func increaseAge() {
        age += 1
    }
    
    
}
