//
//  StudentProfileCreationView.swift
//  Magical School
//
//  Created by Irene J on 11/8/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

class StudentProfileCreation: UIViewController {
    
    @IBOutlet weak var studentPictureImageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var pronounToggleButton: UIButton!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var signToggleButton: UIButton!
    @IBOutlet weak var famliarToggleButton: UIButton!
    
    var pronounCounter = 0
    var signCounter = 0
    var familiarCounter = 0
    
    let prounouns = ["She/Her", "He/Him", "They/Them"]
    let signs = ["The Fool", "The Magician", "High Priestess", "The Empress", "The Emperor", "The Devil", "The Tower", "The Star", "The Moon"]
    let familiars = ["Rat", "Snake", "Cat", "Dog", "Lizard", "Slug", "Slimeball"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        birthdayTextField.delegate = self
        
        pronounToggleButton.setTitle("\(prounouns[0])", for: . normal)
        signToggleButton.setTitle("\(signs[0])", for: .normal)
        famliarToggleButton.setTitle("\(familiars[0])", for: .normal)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func previousPictureButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func nextPictureButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func pronounToggleButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func signToggleButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func familiarToggleButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func saveInputButtonPressed(_ sender: UIButton) {
        
    }
    
}

extension StudentProfileCreation : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

