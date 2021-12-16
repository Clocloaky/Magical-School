//
//  StudentProfileCreationView.swift
//  Magical School
//
//  Created by Irene J on 11/8/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit

struct CharacterProfile {
    var characterImage: String!
    var firstName: String!
    var lastName: String!
    var pronoun: String
    var birthdayDate: String!
    var sign: String
    var familiar: String
}

var defaultProfile = CharacterProfile(characterImage: "avi4", firstName: "Mary", lastName: "Loo", pronoun: "She/Her", birthdayDate: "02/14/1111", sign: "The Moon", familiar: "Bobcat")

class StudentProfileCreation: UIViewController {
    
    @IBOutlet weak var studentPictureImageView: UIImageView!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var pronounToggleButton: UIButton!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var signToggleButton: UIButton!
    @IBOutlet weak var famliarToggleButton: UIButton!
    
    var aviCounter = 0
    var pronounCounter = 0
    var signCounter = 0
    var familiarCounter = 0
    
    let avatar = ["avi1", "avi2", "avi3", "avi4", "avi5"]
    let prounouns = ["She/Her", "He/Him", "They/Them"]
    let signs = ["The Fool", "The Magician", "High Priestess", "The Empress", "The Emperor", "The Devil", "The Tower", "The Star", "The Moon"]
    let familiars = ["Rat", "Snake", "Cat", "Dog", "Lizard", "Slug", "Slimeball"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
        birthdayTextField.delegate = self
        studentPictureImageView.image = UIImage(named: "\(avatar[aviCounter])")
        pronounToggleButton.setTitle("\(prounouns[0])", for: . normal)
        signToggleButton.setTitle("\(signs[0])", for: .normal)
        famliarToggleButton.setTitle("\(familiars[0])", for: .normal)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    @IBAction func previousPictureButtonPressed(_ sender: UIButton) {
        if(aviCounter > 0){
            aviCounter -= 1
            studentPictureImageView.image = UIImage(named: "\(avatar[aviCounter])")
        }else{
            pronounCounter = avatar.count-1
            studentPictureImageView.image = UIImage(named: "\(avatar[aviCounter])")
        }
        
    }
    
    @IBAction func nextPictureButtonPressed(_ sender: UIButton) {
        if(aviCounter < avatar.count-1){
            aviCounter += 1
            studentPictureImageView.image = UIImage(named: "\(avatar[aviCounter])")
        }else{
            pronounCounter = 0
            studentPictureImageView.image = UIImage(named: "\(avatar[aviCounter])")
        }
    }
    
    @IBAction func pronounToggleButtonPressed(_ sender: UIButton) {
        if(pronounCounter < prounouns.count-1){
            pronounCounter += 1
            pronounToggleButton.setTitle("\(prounouns[pronounCounter])", for: . normal)
        }else{
            pronounCounter = 0
            pronounToggleButton.setTitle("\(prounouns[pronounCounter])", for: . normal)
        }
    }
    
    @IBAction func signToggleButtonPressed(_ sender: UIButton) {
        if(signCounter < signs.count-1){
            signCounter += 1
            signToggleButton.setTitle("\(signs[signCounter])", for: .normal)
        }else{
            signCounter = 0
            signToggleButton.setTitle("\(signs[signCounter])", for: .normal)
        }
    }
    
    @IBAction func familiarToggleButtonPressed(_ sender: UIButton) {
        if(familiarCounter < familiars.count-1){
            familiarCounter += 1
            famliarToggleButton.setTitle("\(familiars[familiarCounter])", for: .normal)
        }else{
            familiarCounter = 0
            famliarToggleButton.setTitle("\(familiars[familiarCounter])", for: .normal)
        }
        
    }
    
    @IBAction func saveInputButtonPressed(_ sender: UIButton) {
        defaultProfile.characterImage = avatar[aviCounter]
        if(!firstNameTextField.text!.isEmpty){
            defaultProfile.firstName = firstNameTextField.text!
        }
        if(!lastNameTextField.text!.isEmpty){
            defaultProfile.lastName = lastNameTextField.text!
        }
        defaultProfile.pronoun = prounouns[pronounCounter]
        if(!birthdayTextField.text!.isEmpty){
            defaultProfile.birthdayDate = birthdayTextField.text!
        }
        defaultProfile.sign = signs[signCounter]
        defaultProfile.familiar = familiars[familiarCounter]
        print(defaultProfile)
    }
    
    
}

extension StudentProfileCreation : UITextFieldDelegate{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

