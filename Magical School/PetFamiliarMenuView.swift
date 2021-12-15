//
//  PetFamiliarMenuView.swift
//  Magical School
//
//  Created by Irene J on 11/8/21.
//  Copyright © 2021 Irene J. All rights reserved.
//

import UIKit


class PetFamiliarMenu: UIViewController {
    
    @IBOutlet weak var confirmCharacterImageView: UIImageView!
    @IBOutlet weak var confirmNameLabel: UILabel!
    @IBOutlet weak var confirmPronounLabel: UILabel!
    @IBOutlet weak var confirmBirthdayDateLabel: UILabel!
    @IBOutlet weak var confirmSignLabel: UILabel!
    @IBOutlet weak var confirmFamiliarLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmCharacterImageView.image = UIImage(systemName: defaultProfile.characterImage)
        confirmNameLabel.text! = "\(defaultProfile.firstName!) \(defaultProfile.lastName!)"
        confirmPronounLabel.text! = defaultProfile.pronoun
        confirmBirthdayDateLabel.text! = defaultProfile.birthdayDate
        confirmSignLabel.text! = defaultProfile.sign
        confirmFamiliarLabel.text! = defaultProfile.familiar
    }
    
    override func viewWillAppear(_ animated: Bool){
        confirmCharacterImageView.image = UIImage(systemName: defaultProfile.characterImage)
        confirmNameLabel.text! = "\(defaultProfile.firstName!) \(defaultProfile.lastName!)"
        confirmPronounLabel.text! = defaultProfile.pronoun
        confirmBirthdayDateLabel.text! = defaultProfile.birthdayDate
        confirmSignLabel.text! = defaultProfile.sign
        confirmFamiliarLabel.text! = defaultProfile.familiar
        
    }
    
   /* @IBOutlet weak var selectingFamiliarBtn: UIButton!
    @IBOutlet var selectingFamiliarCollection: [UIButton]!
    var familiarChoice: String? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        selectingFamiliarBtn.layer.cornerRadius = selectingFamiliarBtn.frame.height/2
        selectingFamiliarCollection.forEach{ (btn) in
            btn.layer.cornerRadius = btn.frame.height/2
            btn.isHidden = true
            btn.alpha = 0
            
        }
        
    }
    
    @IBAction func selectFamiliarPressed(_ sender: UIButton) {
        selectingFamiliarCollection.forEach { (btn) in
            UIView.animate(withDuration: 0.7){
                btn.isHidden = !btn.isHidden
                btn.alpha = btn.alpha == 0 ? 1 : 0
                btn.layoutIfNeeded()
            }
            
            if familiarChoice != nil {
                selectingFamiliarBtn.setTitle(familiarChoice, for: .normal)
            }
        }
    }
    @IBAction func selectedFamiliarBtnPressed(_ sender: UIButton) {
        if let familiarBtnLabelText = sender.titleLabel?.text {
            familiarChoice = familiarBtnLabelText
            selectingFamiliarBtn.setTitle(familiarChoice, for: .normal)
            
            selectingFamiliarCollection.forEach { (btn) in
                UIView.animate(withDuration: 0.7){
                    btn.isHidden = !btn.isHidden
                    btn.alpha = btn.alpha == 0 ? 1 : 0
                    btn.layoutIfNeeded()
                }
            }
        }
    }*/
}
