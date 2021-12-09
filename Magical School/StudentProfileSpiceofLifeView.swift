//
//  StudentProfileSpiceofLifeView.swift
//  Magical School
//
//  Created by Irene J on 11/15/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit


class StudentProfileSpiceofLife: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    public var traitsArray: [String] = []
    
    let traitData = [
        ["apple", "oranges", "grapes"],
        ["Shy", "Kind", "Brave", "Cunning"],
        ["Yes", "No"]
    ]
    
    var traitFlags = [
        [false, false, false],
        [false, false, false, false],
        [false, false]
    ]
    
    let traitSectionData = ["Question 1", "Question 2", "Question 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension StudentProfileSpiceofLife: UITableViewDelegate{
    
    /*  - (NSIndexPath*)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath*)indexPath {
     for ( NSIndexPath* selectedIndexPath in tableView.indexPathsForSelectedRows ) {
     if ( selectedIndexPath.section == indexPath.section )
     [tableView deselectRowAtIndexPath:selectedIndexPath animated:NO] ;
     }
     return indexPath ;
     }*/
    
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
        print(traitFlags[indexPath.section])
        
        
        
        //add traits from checked items
        
    }
}

extension StudentProfileSpiceofLife: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return traitSectionData[section]
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
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



