//
//  ViewController.swift
//  NanoChallenge1Git
//
//  Created by Ferry Irawan on 15/05/19.
//  Copyright © 2019 Ferry Irawan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leanerProfileImage: UIImageView!
    @IBOutlet weak var learnerNameLabel: UILabel!{
        didSet{
            learnerNameLabel.textAlignment = .center
        }
    }
    @IBOutlet weak var learnerAgeLabel: UILabel!
    @IBOutlet weak var learnerHeightLabel: UILabel!
    @IBOutlet weak var clickMeBtn: UIButton!{
        didSet{
            clickMeBtn.layer.cornerRadius = 5
            clickMeBtn.clipsToBounds = true
        }
    }
    var learnerInstance: LearnerModel?
    var facilitatorInstance : FacilitatorModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        learnerInstance = LearnerModel(learnerName: "Ferry", learnerAge: 20, learnerHeight: 165.0, learnerImageProfile: "")
        facilitatorInstance = FacilitatorModel(facilName: "Irawan", facilAge: 02, facilHeight: 176.0, facilImageProfile: "", facilPerk: "Free Flow Sbux")
        updateUI()
        
    }
    
    func updateUI() {
        if let instance = learnerInstance{
            learnerNameLabel.text = instance.name
            learnerAgeLabel.text = "\(instance.age)"
            learnerHeightLabel.text = "\(instance.height)"
        }
    }
     
    @IBAction func clickMeClicked(_ sender: Any) {
        if let instance = learnerInstance{
            instance.increaseAge()
            updateUI()
        }
    }
    

}
