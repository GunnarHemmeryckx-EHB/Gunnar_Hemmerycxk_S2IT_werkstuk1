//
//  ToevoegenViewController.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 31/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//

import UIKit

class ToevoegenViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    @IBOutlet weak var txtNaam: UITextField!
    @IBOutlet weak var txtVoornaam: UITextField!
    @IBOutlet weak var txtStraat: UITextField!
    @IBOutlet weak var txtHuisNr: UITextField!
    @IBOutlet weak var txtGemeente: UITextField!
    @IBOutlet weak var txtPostcode: UITextField!
    @IBOutlet weak var txtLatitude: UITextField!
    @IBOutlet weak var txtLongitude: UITextField!
    @IBOutlet weak var txtTelefoonNr: UITextField!
    @IBOutlet weak var afbNamePicker: UIPickerView!
    var selectedName:String?
    
    let imgNamen = ["blank_profile","BobaFett", "ObiWanKenobi", "QuiGon_Jinn","Chewbacca"]
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Werking UIPicker dankzij: https://www.youtube.com/watch?v=tGr7qsKGkzY&ab_channel=TheSwiftGuy
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return imgNamen[row]
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return imgNamen.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedName = imgNamen[row]
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? TableViewController{
            if (selectedName != nil){
                let persoon = Persoon(naam: self.txtNaam.text!, voornaam: self.txtVoornaam.text!, afbeelding: selectedName!, straat: self.txtStraat.text!, huisnummer: Int(self.txtHuisNr.text!)!, postcode: Int(self.txtPostcode.text!)!, gemeente: self.txtGemeente.text!, telefoonnummer: self.txtTelefoonNr.text!, coordLat: Double(self.txtLatitude.text!)!, coordLong: Double(self.txtLongitude.text!)!)
                vc.tempPersoon = persoon
            }
            else{
                let persoon = Persoon(naam: self.txtNaam.text!, voornaam: self.txtVoornaam.text!, afbeelding: "blank_profile", straat: self.txtStraat.text!, huisnummer: Int(self.txtHuisNr.text!)!, postcode: Int(self.txtPostcode.text!)!, gemeente: self.txtGemeente.text!, telefoonnummer: self.txtTelefoonNr.text!, coordLat: Double(self.txtLatitude.text!)!, coordLong: Double(self.txtLongitude.text!)!)
                vc.tempPersoon = persoon
            }
            
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    
    
}
