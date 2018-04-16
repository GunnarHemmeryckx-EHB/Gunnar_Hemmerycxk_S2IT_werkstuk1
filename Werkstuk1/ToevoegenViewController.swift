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
    
    var textFields = [UITextField]()
    var selectedImageNaam:String?
    
    let imgNamen = ["blank_profile","BobaFett", "ObiWanKenobi", "QuiGon_Jinn","Chewbacca"]
    override func viewDidLoad() {
        
        self.textFields = [self.txtNaam,self.txtVoornaam,self.txtStraat,self.txtHuisNr,self.txtGemeente,self.txtPostcode,self.txtLatitude,self.txtLongitude,self.txtTelefoonNr]
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
        selectedImageNaam = imgNamen[row]
    }
    
    
    /*
    // MARK: - Navigation
    
    
    //ER VOOR ZORGEN DAT MEN NIET ALTIJD TERUG SEGUE NAAR DEZE PAGINA : https://medium.com/@mimicatcodes/create-unwind-segues-in-swift-3-8793f7d23c6f
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "unwindSegueToTable" {
            if let vc = segue.destination as? TableViewController{
                for textField in textFields{
                    if validate(textField: textField) {
                        if(selectedImageNaam != nil){
                            let persoon = Persoon(naam: self.txtNaam.text!, voornaam: self.txtVoornaam.text!, afbeelding: selectedImageNaam!, straat: self.txtStraat.text!, huisnummer: Int(self.txtHuisNr.text!)!, postcode: Int(self.txtPostcode.text!)!, gemeente: self.txtGemeente.text!, telefoonnummer: self.txtTelefoonNr.text!, coordLat: Double(self.txtLatitude.text!)!, coordLong: Double(self.txtLongitude.text!)!)
                            vc.tempPersoon = persoon
                            
                        }
                        else{
                            let persoon = Persoon(naam: self.txtNaam.text!, voornaam: self.txtVoornaam.text!, afbeelding: "blank_profile", straat: self.txtStraat.text!, huisnummer: Int(self.txtHuisNr.text!)!, postcode: Int(self.txtPostcode.text!)!, gemeente: self.txtGemeente.text!, telefoonnummer: self.txtTelefoonNr.text!, coordLat: Double(self.txtLatitude.text!)!, coordLong: Double(self.txtLongitude.text!)!)
                            vc.tempPersoon = persoon
                            
                        }
                    } else {
                        textField.layer.borderColor = UIColor.red.cgColor
                    }
                }
                
            }
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func validate(textField: UITextField) -> Bool {
        guard let text = textField.text,
            !text.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty else {
                // this will be reached if the text is nil (unlikely)
                // or if the text only contains white spaces
                // or no text at all
                return false
        }
        
        return true
    }
    
    
}
