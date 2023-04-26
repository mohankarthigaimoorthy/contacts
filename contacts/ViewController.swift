//
//  ViewController.swift
//  contacts
//
//  Created by Mohan K on 02/12/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var personContactTable: UITableView!
    
    @IBOutlet weak var contactLabel: UILabel!
    
    
    
    var models = [professionContact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Contacts"
        personContactTable.delegate = self
        personContactTable.dataSource = self
        personContactTable.rowHeight = 110
        
        models = [  professionContact(Names: "Mathi", Professions: "H acker", contactImage: UIImage(named: "image1")!, Countryimage: UIImage(named: "image1")!),
                    professionContact(Names: "Manohar", Professions: "Assistant", contactImage: UIImage(named: "image0")!, Countryimage: UIImage(named: "image0")!),
                    professionContact(Names: "kathir", Professions: "Project Lead", contactImage: UIImage(named: "image2")!, Countryimage: UIImage(named: "image1")!),
                    professionContact(Names: "Vembuli", Professions: "Senior Developer", contactImage: UIImage(named: "image3")!, Countryimage: UIImage(named: "image3")!),
                    professionContact(Names: "kabilan", Professions: "Developer", contactImage: UIImage(named: "image4")!, Countryimage: UIImage(named: "image4")!),
                    professionContact(Names: "karthikeya", Professions: "Trainee", contactImage: UIImage(named: "image5")!, Countryimage: UIImage(named: "image5")!),
                    professionContact(Names: "Mani", Professions: "Internship", contactImage: UIImage(named: "image6")!, Countryimage: UIImage(named: "image6")!)
        ]
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return models.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = personContactTable.dequeueReusableCell(withIdentifier: "contactTableViewCell", for: indexPath) as! contactTableViewCell
        
        cell.personNames.text = models[indexPath.row].Names
        cell.personProfession.text = models[indexPath.row].Professions
        cell.contactPersonImage.image = models[indexPath.row].contactImage
        cell.countryImage.image = models[indexPath.row].Countryimage
        if let btnDelete = cell.contentView.viewWithTag(102) as? UIButton {
            btnDelete.addTarget(self, action: #selector(deleteRow(sender: )),for: .touchUpInside)
        }
        return cell
        
    }
    
    @objc  func deleteRow(sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: personContactTable)
        guard let indexPath = personContactTable.indexPathForRow(at: point) else {
            return
        }
        models.remove(at: indexPath.row)
        personContactTable.deleteRows(at: [indexPath], with: .left)
    }

}

