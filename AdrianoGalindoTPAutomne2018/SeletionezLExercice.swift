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
    
    var selectedExoDic = [String: String]()
    
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


func buildData() {
    guard let serieValue01 = nbSeriesTextFieldInput.text else {return}
    selectedExoDic["Nombre de Séries"] = serieValue01
    
    guard let serieValue02 = nbRepetitionsTextFieldInput.text else {return}
        selectedExoDic["Nombre de Répétions"] = serieValue02
    
    guard let serieValue03 = poidsTextFieldInput.text else {return}
    selectedExoDic["Poids (kg)"] = serieValue03
    
    guard let serieValue04 = tempsSeanceTextFieldInput.text else {return}
    selectedExoDic["Temps de la séance"] = serieValue04
    
}
    

    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else {
            return
        }
        
        if identifier == "goExerciceProposee" {
            guard let destinationVc = segue.destination as? ExerciceProposeeTableViewController else {return}
            destinationVc.dataDic = selectedExoDic
        }
    }
    
    @IBAction func goActionButton(_ sender: UIButton) {
        buildData()
    }

}

extension SeletionezLExercice: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}



