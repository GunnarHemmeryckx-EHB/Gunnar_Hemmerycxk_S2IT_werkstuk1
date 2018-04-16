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
    
    
    //How To Use A Picker View In Xcode 8 (Swift 3.0)
    //Werking UIPicker dankzij: https://www.youtube.com/watch?v=tGr7qsKGkzY&ab_channel=TheSwiftGuy
    //GERAADPLEEGD OP: April 1, 2018
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
