//
//  StudentProfileSpiceofLifeView.swift
//  Magical School
//
//  Created by Irene J on 11/15/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

var traitsArray: [String] = []

class StudentProfileSpiceofLife: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    
    let traitData = [
        ["Shy", "Kind", "Smart", "Cunning", "Pretty"],
        ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
        ["Library", "Home", "Cafe", "Park", "Closet", "I don't study lol"],
        ["Eating", "Sleeping", "Drawing", "Playing Music", "Dancing", "Exercising"]
    ]
    
    var traitFlags = [
        [false, false, false, false, false],
        [false, false, false, false, false, false, false],
        [false, false, false, false, false, false],
        [false, false, false, false, false, false]
    ]
    
    let traitSectionData = ["How would you describe yourself?", "What is your favorite day of the week?", "Where do you like to study?", "What is your favorite past time?"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension StudentProfileSpiceofLife: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var sectionAllFalse = true
        //requires a feature to only select one
        //look through each section
        //check the flags of each section's array
        //if one of the flags is true, I change all of the flags to false in that section
        tableView.deselectRow(at: indexPath, animated: true)
        //invert the flag
        for eachFlag in traitFlags[indexPath.section]{
            if eachFlag == true{
                sectionAllFalse = false
                traitFlags[indexPath.section][indexPath.row] = false
            }
        }
        if (!traitFlags[indexPath.section][indexPath.row] && sectionAllFalse){
            traitFlags[indexPath.section][indexPath.row] = !traitFlags[indexPath.section][indexPath.row]
        }
        else{
            sectionAllFalse = true
        }
        tableView.reloadRows(at: [indexPath], with: .automatic)
        
        
        //adding traits for character stats
        traitsArray.removeAll()
        for i in 0...traitData.count-1{
            for j in 0...traitData[i].count-1{
                if(traitFlags[i][j] == true){
                    traitsArray.append(traitData[i][j])
                }
            }
        }
            print(traitsArray)
    }
    
}

extension StudentProfileSpiceofLife: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return traitSectionData[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return traitData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return traitData[section].count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = traitData[indexPath.section][indexPath.row]
        //if the flag is true, put a check mark. Else, take it off if false
        cell.accessoryType = traitFlags[indexPath.section][indexPath.row] ? .checkmark : .none
        //cell.backgroundColor = .magenta
        return cell
    }
    
}



