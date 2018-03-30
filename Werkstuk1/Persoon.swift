//
//  Persoon.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 30/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//

import UIKit

class Persoon: NSObject {
    var naam = ""
    var voornaam = ""
    var afbeelding = ""
    var straat = ""
    var huisnummer: Int = 0
    var postcode: Int = 0
    var gemeente = ""
    var telefoonnummer = ""
    var coordLong: Int = 0
    var coordLat: Int = 0
    
    init(naam: String , voornaam: String,afbeelding: String,straat: String,huisnummer: Int,postcode: Int) {
        
    }
}
