//
//  StudentProfileSpiceofLifeView.swift
//  Magical School
//
//  Created by Irene J on 11/15/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class characterTraits {
    var sectionName: String?
    var listOfTraits: [String : Bool]?
    var isChecked: Bool = false
    
    init(sectionName: String, listOfTraits: [String : Bool]) {
        self.sectionName = sectionName
        self.listOfTraits = listOfTraits
    }
}

class CharacterCreationTraitsViewController: UIViewController{
    @IBOutlet weak var traitsTableView: UITableView!
    var yourTraits = [characterTraits]()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        yourTraits.append(characterTraits.init(sectionName: "How would you describe yourself?", listOfTraits: ["Shy" : false, "Kind" : false, "Pretty" : false]))
        yourTraits.append(characterTraits.init(sectionName: "Which item appeals to you?", listOfTraits: ["Needle" : false, "Diary" : false, "Chocolate" : false, "Roses" : false]))
        /*
         yourTraits.append(characterTraits.init(sectionName: "What are you afraid of?", listOfTraits: ["Heights", "Ghosts", "Nothing :)", "Spiders", "The Dark"]))*/
    }
}

extension CharacterCreationTraitsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return yourTraits.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yourTraits[section].listOfTraits?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let traitIndex = ["Shy", "Kind", "Pretty", "Needle", "Dairy", "Chocolate", "Roses"]
        let item = yourTraits[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = traitIndex[indexPath.row]
        
        //cell.textLabel?.text = item.listOfTraits?[indexPath.row]
        cell.accessoryType = (item.listOfTraits?[traitIndex[indexPath.row]])! ? .checkmark : .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return yourTraits[section].sectionName
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = yourTraits[indexPath.row]
        item.isChecked = !item.isChecked
        print(item)
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
}

