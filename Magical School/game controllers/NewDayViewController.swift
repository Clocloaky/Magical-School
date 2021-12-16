//
//  NewDayViewController.swift
//  Magical School
//
//  Created by Irene J on 12/15/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class NewDayViewController: UIViewController {

    @IBOutlet weak var newDayEventsTextView: UITextView!
    
    var morningE: String = "In the Morning: \n"
    var lunchE: String = "During Lunch \n"
    var afterE: String = "After School: \n"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gen1 = genNum()
        let gen2 = genNum()
        let gen3 = genNum()
        morningE.append(contentsOf: morningEvents[gen1].eventText)
        lunchE.append(contentsOf: lunchEvent[gen2].eventText)
        afterE.append(contentsOf: afterSchoolEvent[gen3].eventText)
        newDayEventsTextView.text = morningE + "\n" + lunchE + "\n" + afterE
        
    }

    func genNum() -> Int {
        return Int.random(in: 0...4)
    }

}
