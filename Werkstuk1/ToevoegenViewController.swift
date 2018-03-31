//
//  ToevoegenViewController.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 31/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//

import UIKit

class ToevoegenViewController: UIViewController {
    
    
    @IBOutlet weak var txtNaam: UITextField!
    @IBOutlet weak var txtVoornaam: UITextField!
    @IBOutlet weak var txtStraat: UITextField!
    @IBOutlet weak var txtHuisNr: UITextField!
    @IBOutlet weak var txtGemeente: UITextField!
    @IBOutlet weak var txtPostcode: UITextField!
    @IBOutlet weak var txtLatitude: UITextField!
    @IBOutlet weak var txtLongitude: UITextField!
    @IBOutlet weak var txtTelefoonNr: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TableViewController{
            let persoon = Persoon(naam: self.txtNaam.text!, voornaam: self.txtVoornaam.text!, afbeelding: "ObiWanKenobi", straat: self.txtStraat.text!, huisnummer: Int(self.txtHuisNr.text!)!, postcode: Int(self.txtPostcode.text!)!, gemeente: self.txtGemeente.text!, telefoonnummer: self.txtTelefoonNr.text!, coordLat: Double(self.txtLatitude.text!)!, coordLong: Double(self.txtLongitude.text!)!)
            vc.tempPersoon = persoon
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}
