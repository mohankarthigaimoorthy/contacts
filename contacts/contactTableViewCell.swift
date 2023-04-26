//
//  contactTableViewCell.swift
//  contacts
//
//  Created by Mohan K on 02/12/22.
//

import UIKit

class contactTableViewCell: UITableViewCell {

    
    @IBOutlet weak var contactPersonImage: UIImageView!
    
    
    @IBOutlet weak var deleteButton: UIButton!
    
    
    
   @IBOutlet weak var personNames: UILabel!
    
    
    @IBOutlet weak var personProfession: UILabel!
    
    
    @IBOutlet weak var countryImage: UIImageView!
   
    override func awakeFromNib() {
        super.awakeFromNib()

        contactPersonImage.layer.cornerRadius = 41
//        contactPersonImage.frame.size.width / 2
        countryImage.layer.cornerRadius = countryImage.frame.size.width / 2
        personProfession.layer.cornerRadius = 5
        deleteButton.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

   
}
