//
//  gamesceneviewsViewController.swift
//  Magical School
//
//  Created by Irene J on 12/15/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

struct characterStats{
    var intel: Int
    var fitness: Int
    var style: Int
    var arts: Int
    var social: Int
    var charm: Int
    var money: Double
    var stress: Int
}

class gamesceneviewsViewController: UIViewController {

    @IBOutlet weak var nameDisplayLabel: UILabel!
    @IBOutlet weak var birthdateDisplayLabel: UILabel!
    @IBOutlet weak var intelDisplayLabel: UILabel!
    @IBOutlet weak var fitnessDisplayLabel: UILabel!
    @IBOutlet weak var styleDisplayLabel: UILabel!
    @IBOutlet weak var artsDisplayLabel: UILabel!
    @IBOutlet weak var socialDisplayLabel: UILabel!
    @IBOutlet weak var charmDisplayLabel: UILabel!
    @IBOutlet weak var moneyDisplayLabel: UILabel!
    @IBOutlet weak var stressDisplayLabel: UILabel!
    
    public var characterBaseStat = characterStats(intel: 20, fitness: 20, style: 20, arts: 20, social: 20, charm: 20, money: 100, stress: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameDisplayLabel.text = "\(defaultProfile.firstName!)  \(defaultProfile.lastName!)"
        birthdateDisplayLabel.text = defaultProfile.birthdayDate
        intelDisplayLabel.text = "Intel: \(characterBaseStat.intel)"
        fitnessDisplayLabel.text = "Fitness: \(characterBaseStat.fitness)"
        styleDisplayLabel.text = "Style: \(characterBaseStat.style)"
        artsDisplayLabel.text = "Arts: \(characterBaseStat.arts)"
        socialDisplayLabel.text = "Social: \(characterBaseStat.social)"
        charmDisplayLabel.text = "Charm: \(characterBaseStat.charm)"
        moneyDisplayLabel.text = "Money: \(characterBaseStat.money)"
        stressDisplayLabel.text = "Stress: \(characterBaseStat.stress)"
        
        //round labels
        intelDisplayLabel.layer.masksToBounds = true
        intelDisplayLabel.layer.cornerRadius = 10
        fitnessDisplayLabel.layer.masksToBounds = true
        fitnessDisplayLabel.layer.cornerRadius = 10
        styleDisplayLabel.layer.masksToBounds = true
        styleDisplayLabel.layer.cornerRadius = 10
        artsDisplayLabel.layer.masksToBounds = true
        artsDisplayLabel.layer.cornerRadius = 10
        socialDisplayLabel.layer.masksToBounds = true
        socialDisplayLabel.layer.cornerRadius = 10
        charmDisplayLabel.layer.masksToBounds = true
        charmDisplayLabel.layer.cornerRadius = 10
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
