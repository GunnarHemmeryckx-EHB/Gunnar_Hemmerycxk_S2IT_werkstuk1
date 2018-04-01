//
//  SecondTabViewController.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 30/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//

import UIKit
import MapKit

class SecondTabViewController: UIViewController,MKMapViewDelegate {
   
    @IBOutlet weak var mapView: MKMapView!
    
    var persoon1 = Persoon(naam: "Kenobi", voornaam: "Obi-wan", afbeelding: "ObiWanKenobi", straat: "Jundland Wastes", huisnummer: 3, postcode: 1374, gemeente: "Tatooine", telefoonnummer: "0455671023", coordLat: 33.740833, coordLong: 10.734951)
    var persoon2 = Persoon(naam: "Jinn", voornaam: "Qui-Gon", afbeelding: "QuiGon_Jinn", straat: "Form IV", huisnummer: 12, postcode: 1734, gemeente: "Ataru", telefoonnummer: "0434211697", coordLat: 41.073485, coordLong: 14.327004)
    var persoon3 = Persoon(naam: "Boba", voornaam: "Fett", afbeelding: "BobaFett", straat: "Great Pit of Carkoon", huisnummer: 1, postcode: 1373, gemeente: "Tatooine", telefoonnummer: "0454102201", coordLat: 32.377246, coordLong: -113.891700)
    var persoon4 = Persoon(naam: "(Chewie)", voornaam: "Chewbacca", afbeelding: "Chewbacca", straat: "Forest", huisnummer: 6, postcode: 1823, gemeente: "Kashyyyk", telefoonnummer: "0446123434", coordLat: 8.247011, coordLong: 98.563542)
    
    var persoonArray = [Persoon]()
    
    
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        persoonArray.append(persoon1)
        persoonArray.append(persoon2)
        persoonArray.append(persoon3)
        persoonArray.append(persoon4)
        
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
        
        //VOOR IEDERE PERSOON IN DE ARRAY EEN ANNATATION TOEVOEGEN
        for persoon in persoonArray {
            let annotation = MyAnnotation(coordinate: CLLocationCoordinate2D(latitude: persoon.coordLat, longitude: persoon.coordLong), title: persoon.voornaam + " " + persoon.naam,  subtitle: "Lat: " + String(persoon.coordLat) + " Long:" + String(persoon.coordLong))
            self.mapView.addAnnotation(annotation)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func mapView(_ mapView: MKMapView, didUpdate userLocation: MKUserLocation) {
        let center = CLLocationCoordinate2D(latitude: userLocation.coordinate.latitude, longitude: userLocation.coordinate.longitude)
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
