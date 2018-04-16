//
//  TableViewController.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 30/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//


//TABBAR ICONEN VAN: https://www.flaticon.com
import UIKit

class TableViewController: UITableViewController {
    
    
    
    //PERSONEN OBJECT(EN) MAKEN
    var persoon1 = Persoon(naam: "Kenobi", voornaam: "Obi-wan", afbeelding: "ObiWanKenobi", straat: "Jundland Wastes", huisnummer: 3, postcode: 1374, gemeente: "Tatooine", telefoonnummer: "0455671023", coordLat: 33.740833, coordLong: 10.734951)
    var persoon2 = Persoon(naam: "Jinn", voornaam: "Qui-Gon", afbeelding: "QuiGon_Jinn", straat: "Form IV", huisnummer: 12, postcode: 1734, gemeente: "Ataru", telefoonnummer: "0434211697", coordLat: 41.073485, coordLong: 14.327004)
    var persoon3 = Persoon(naam: "Fett", voornaam: "Boba", afbeelding: "BobaFett", straat: "Great Pit of Carkoon", huisnummer: 1, postcode: 1373, gemeente: "Tatooine", telefoonnummer: "0454102201", coordLat: 32.377246, coordLong: -113.891700)
    var persoon4 = Persoon(naam: "(Chewie)", voornaam: "Chewbacca", afbeelding: "Chewbacca", straat: "Forest", huisnummer: 6, postcode: 1823, gemeente: "Kashyyyk", telefoonnummer: "0446123434", coordLat: 8.247011, coordLong: 98.563542)
    var persoon5 = Persoon(naam: "Doe", voornaam: "John", afbeelding: "blank_profile", straat: "Infinite Loop", huisnummer: 2, postcode: 95014, gemeente: "Cupertino", telefoonnummer: "0452952205", coordLat: 37.332308, coordLong: -122.030784)
    
    //ARRAY AANMAKEN
    var persoonArray = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //PERSONEN TOEVOEGEN AAN ARRAY
        persoonArray.append(persoon1)
        persoonArray.append(persoon2)
        persoonArray.append(persoon3)
        persoonArray.append(persoon4)
        persoonArray.append(persoon5)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return persoonArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "persoonCell", for: indexPath)
        
        
        cell.imageView?.image = UIImage(named: persoonArray[indexPath.row].afbeelding)
        cell.textLabel?.text = persoonArray[indexPath.row].voornaam + " " + persoonArray[indexPath.row].naam
        
        return cell
    }
    
    //Passing Data: Segue and Unwind | Swift 4, Xcode 9
    //https://www.youtube.com/watch?v=XjBqKaGiZws&ab_channel=KiloLoco
    //GERAADPLEEGD OP: April 10, 2018
    @IBAction func unwindToTableVC(segue:UIStoryboardSegue) {
        guard let toevoegVC = segue.source as? ToevoegenViewController else{return}
        let textFields = [toevoegVC.txtNaam,toevoegVC.txtVoornaam,toevoegVC.txtStraat,toevoegVC.txtHuisNr,toevoegVC.txtGemeente,toevoegVC.txtPostcode,toevoegVC.txtLatitude,toevoegVC.txtLongitude,toevoegVC.txtTelefoonNr]
        var persoon:Persoon
        
        
        //PERSOON TOEVEOGEN DIE IS AANGEMAAKT IN DE TOEVOEGEN VIEW
        if(toevoegVC.selectedImageNaam != nil){
            persoon = Persoon(naam: toevoegVC.txtNaam.text!, voornaam: toevoegVC.txtVoornaam.text!, afbeelding: toevoegVC.selectedImageNaam!, straat: toevoegVC.txtStraat.text!, huisnummer: Int(toevoegVC.txtHuisNr.text!)!, postcode: Int(toevoegVC.txtPostcode.text!)!, gemeente: toevoegVC.txtGemeente.text!, telefoonnummer: toevoegVC.txtTelefoonNr.text!, coordLat: Double(toevoegVC.txtLatitude.text!)!, coordLong: Double(toevoegVC.txtLongitude.text!)!)
            self.persoonArray.append(persoon)
        }
        else{
            persoon = Persoon(naam: toevoegVC.txtNaam.text!, voornaam: toevoegVC.txtVoornaam.text!, afbeelding: "blank_profile", straat: toevoegVC.txtStraat.text!, huisnummer: Int(toevoegVC.txtHuisNr.text!)!, postcode: Int(toevoegVC.txtPostcode.text!)!, gemeente: toevoegVC.txtGemeente.text!, telefoonnummer: toevoegVC.txtTelefoonNr.text!, coordLat: Double(toevoegVC.txtLatitude.text!)!, coordLong: Double(toevoegVC.txtLongitude.text!)!)
            self.persoonArray.append(persoon)
        }
        print("HIER:\(persoon.naam)")
        tableView.reloadData()
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        //SEGUE NAAR DETAILPAGINA
        if let nextvc = segue.destination as? DetailViewController {
            let indexpath = self.tableView.indexPathForSelectedRow!
            nextvc.persoon = self.persoonArray[indexpath.row]
        }
    }
    
}
