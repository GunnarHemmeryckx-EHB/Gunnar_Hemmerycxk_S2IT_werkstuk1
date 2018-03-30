//
//  myAnnotation.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 30/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//

import UIKit
import MapKit

class MyAnnotation: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    
    init(coordinate: CLLocationCoordinate2D, title: String) {
        self.coordinate = coordinate
        self.title = title
    }
}

/*self.persoonImage.image = UIImage(named: persoon!.afbeelding)
self.lblNaam.text = persoon!.voornaam + " " + persoon!.naam
self.lblStraat.text = persoon!.straat + " " + String(persoon!.huisnummer)
self.lblGemeente.text = persoon!.gemeente + " " + String(persoon!.postcode)

let annotation = MyAnnotation(coordinate: CLLocationCoordinate2D(latitude: persoon!.coordLat, longitude: persoon!.coordLong), title: persoon!.voornaam + " " + persoon!.naam)

let center = CLLocationCoordinate2D(latitude: persoon!.coordLat, longitude: persoon!.coordLong)
let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
let region = MKCoordinateRegion(center: center, span: span)
self.mapView.addAnnotation(annotation)
self.mapView.setRegion(region, animated: true)*/
