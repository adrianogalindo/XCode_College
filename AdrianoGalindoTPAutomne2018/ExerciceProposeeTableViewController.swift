//
//  ExerciceProposeeTableViewController.swift
//  AdrianoGalindoTPAutomne2018
//
//  Created by Adriano Galindo on 06/12/18.
//  Copyright © 2018 Adriano Galindo. All rights reserved.
//

import UIKit

class ExerciceProposeeTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    var dataDic = [String: String]()
    var images = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        images.append(getImage(name: "exercice1"))
        images.append(getImage(name: "exercice2"))
        images.append(getImage(name: "exercice3"))
        images.append(getImage(name: "exercice4"))
        images.append(getImage(name: "exercice5"))
        }
        
        // MARK: - Table view data source
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return images.count
        }
        
        func getImage (name:String) -> UIImage {
            return UIImage(named: name) ?? UIImage()
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "exercice1", for: indexPath) as? FormCell else { return UITableViewCell()}
        
        cell.exerciceImageView.image = images[indexPath.row]

        

        if let text = dataDic["Nb de Séries"] {
            cell.serieFieldText.text = text
        }
        
        if let text = dataDic["Nb de Réepétions"] {
            cell.repetitionsFieldText.text = text
        }
        if let text = dataDic["Poids (kg)"] {
            cell.poidsFieldText.text = text
        }
        if let text = dataDic["Temps de la séance"] {
            cell.seanceFieldText.text = text
        }
        
//        cell.TitreExercice.text = titles[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 145
    }
}


