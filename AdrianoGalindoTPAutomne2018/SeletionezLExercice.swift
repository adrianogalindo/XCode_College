//
//  Acceuil.swift
//  AdrianoGalindoTPAutomne2018
//
//  Created by Galindo on 2018-11-22.
//  Copyright © 2018 Adriano Galindo. All rights reserved.
//


import UIKit

class SeletionezLExercice: UIViewController {
    
    @IBOutlet weak var nbSeriesLabelInput: UILabel!
    @IBOutlet weak var nbSeriesTextFieldInput: UITextField!
    
    @IBOutlet weak var nbRepetitionsLabelInput: UILabel!
    @IBOutlet weak var nbRepetitionsTextFieldInput: UITextField!
    
    @IBOutlet weak var poidsLabelInput: UILabel!
    @IBOutlet weak var poidsTextFieldInput: UITextField!
    
    @IBOutlet weak var tempsSeanceLabelInput: UILabel!
    @IBOutlet weak var tempsSeanceTextFieldInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resetTextFields()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
        
        self.view.addGestureRecognizer(tapGesture)
    }
    
    @objc func dissmissKeyboard() {
        self.view.endEditing(true)
    }
    
    func resetTextFields() {
        
        nbSeriesTextFieldInput.text = "0"
        nbSeriesTextFieldInput.delegate = self
        
        nbRepetitionsTextFieldInput.text = "0"
        nbRepetitionsTextFieldInput.delegate = self
        
        poidsTextFieldInput.text = "0"
        poidsTextFieldInput.delegate = self
        
        tempsSeanceTextFieldInput.text = "0"
        tempsSeanceTextFieldInput.delegate = self
    }
}
extension SeletionezLExercice: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

