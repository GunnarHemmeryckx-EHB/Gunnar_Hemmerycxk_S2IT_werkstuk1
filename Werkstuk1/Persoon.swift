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
    var coordLong: Double = 0
    var coordLat: Double = 0
    
    init(naam: String , voornaam: String,afbeelding: String,straat: String,huisnummer: Int,postcode: Int,gemeente: String,telefoonnummer: String,coordLat: Double,coordLong: Double) {
        self.naam = naam
        self.voornaam = voornaam
        self.afbeelding = afbeelding
        self.straat = straat
        self.huisnummer = huisnummer
        self.postcode = postcode
        self.gemeente = gemeente
        self.telefoonnummer = telefoonnummer
        self.coordLat = coordLat
        self.coordLong = coordLong
    }
}
