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

class gameSceneViewsViewController: UIViewController {
    
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
    
    
    
    var characterBaseStat = characterStats(intel: 30, fitness: 30, style: 30, arts: 30, social: 30, charm: 30, money: 100, stress: 0)
    var bonuses = characterStats(intel: 0, fitness: 0, style: 0, arts: 0, social: 0, charm: 0, money: 0.00, stress: 0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetBonuses()
        generateBonuses()
        nameDisplayLabel.text = "\(defaultProfile.firstName!)  \(defaultProfile.lastName!)"
        birthdateDisplayLabel.text = defaultProfile.birthdayDate
        intelDisplayLabel.text = "Intel: \(characterBaseStat.intel + bonuses.intel)"
        fitnessDisplayLabel.text = "Fitness: \(characterBaseStat.fitness + bonuses.fitness)"
        styleDisplayLabel.text = "Style: \(characterBaseStat.style + bonuses.style)"
        artsDisplayLabel.text = "Arts: \(characterBaseStat.arts + bonuses.arts)"
        socialDisplayLabel.text = "Social: \(characterBaseStat.social + bonuses.social)"
        charmDisplayLabel.text = "Charm: \(characterBaseStat.charm + bonuses.charm)"
        moneyDisplayLabel.text = "Money: \(characterBaseStat.money + bonuses.money)"
        stressDisplayLabel.text = "Stress: \(characterBaseStat.stress + bonuses.stress)"
        
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
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    func resetBonuses(){
        bonuses.arts = 0
        bonuses.charm = 0
        bonuses.fitness = 0
        bonuses.intel = 0
        bonuses.money = 0.00
        bonuses.social = 0
        bonuses.stress = 0
        bonuses.style = 0
    }
    
    func generateBonuses(){
        print("Proc bonuses)")
        for eachItem in traitsArray{
            switch eachItem {
            case "Shy":
                bonuses.arts += 5
            case "Kind":
                bonuses.charm += 5
            case "Smart":
                bonuses.fitness += 5
            case "Cunning":
                bonuses.money += 50.0
            case "Pretty":
                bonuses.social += 5
            case "Monday":
                bonuses.style += 5
            case "Tuesday":
                bonuses.stress += 5
            case "Wednesday":
                bonuses.arts -= 2
            case "Thursday":
                bonuses.charm -= 2
            case "Friday":
                bonuses.fitness -= 2
            case "Saturday":
                bonuses.intel -= 2
            case "Sunday":
                bonuses.money -= 50.0
            case "Library":
                bonuses.intel += 10
            case "Home":
                bonuses.money += 20
            case "Park":
                bonuses.social += 10
            case "Closet":
                bonuses.stress += 20
            case "I don't study lol":
                bonuses.intel -= 20
            case "Eating":
                bonuses.money -= 20
            case "Sleeping":
                bonuses.arts += 3
            case "Drawing":
                bonuses.charm += 3
            case "Playing Music":
                bonuses.fitness += 3
            case "Dancing":
                bonuses.intel += 3
            case "Exercising":
                bonuses.social += 3
            default:
                print("no bonuses queried")
            }
        }
    }
    
    @IBAction func newdayPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func unwindToRoom(segue: UIStoryboardSegue){
        
    }
    
}
