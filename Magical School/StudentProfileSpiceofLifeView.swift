//
//  StudentProfileSpiceofLifeView.swift
//  Magical School
//
//  Created by Irene J on 11/15/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class ChecklistItem {
    let title: String
    var isChecked: Bool = false
    
    init(title: String){
        self.title = title
    }
}

    public var traitsArray : [String] = []

class StudentProfileSpiceofLife: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    let items: [ChecklistItem] = [
        "I love to draw and paint",
        "I love animals and think they're cute",
        "I'm always up to date with the latest fashion",
        "I'm a night owl",
        "I love waking with the sun",
        "I am a people person",
        "Reading is fun",
        "Going out is fun"
        ].compactMap({
            ChecklistItem(title: $0)
        })
    
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Select some traits."
    }
    //table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.isChecked ? .checkmark : .none
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let item = items[indexPath.row]
        item.isChecked = !item.isChecked
        tableView.reloadRows(at: [indexPath], with: .automatic)
        //figure out how to save checked items
        traitsArray.removeAll()
        for each in 0...items.count-1 {
            if items[each].isChecked {
                traitsArray.append(items[each].title)
            }
        }
        print(traitsArray)
    }
    
    
}


