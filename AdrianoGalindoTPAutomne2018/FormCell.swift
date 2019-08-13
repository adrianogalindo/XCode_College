//
//  FormeCell.swift
//  AdrianoGalindoTPAutomne2018
//
//  Created by Adriano Galindo on 06/12/18.
//  Copyright © 2018 Adriano Galindo. All rights reserved.
//

import UIKit

class FormCell: UITableViewCell {


    @IBOutlet weak var exerciceImageView: UIImageView!
    
    @IBOutlet weak var nomeDErxercice: UILabel!
    
    @IBOutlet weak var serieTextLabel: UILabel!
    @IBOutlet weak var serieFieldText: UILabel!
    
    @IBOutlet weak var repetitionsTextLabel: UILabel!
    @IBOutlet weak var repetitionsFieldText: UILabel!
    
    @IBOutlet weak var poidsTextLabel: UILabel!
    @IBOutlet weak var poidsFieldText: UILabel!
    
    @IBOutlet weak var seanceTextLabel: UILabel!
    @IBOutlet weak var seanceFieldText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
