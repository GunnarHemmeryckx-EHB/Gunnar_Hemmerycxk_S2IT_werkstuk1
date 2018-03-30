//
//  DetailViewController.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 30/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var persoonImage: UIImageView!
    
    @IBOutlet weak var lblNaam: UILabel!
    @IBOutlet weak var lblStraat: UILabel!
    
    @IBOutlet weak var mapView: MKMapView!
    
    var persoon:Persoon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         self.persoonImage.image = UIImage(named: persoon!.afbeelding)
        self.lblNaam.text = persoon!.voornaam + " " + persoon!.naam
        self.lblStraat.text = persoon!.straat
        
        let annotation = MyAnnotation(coordinate: CLLocationCoordinate2D(latitude: persoon!.coordLat, longitude: persoon!.coordLong), title: persoon!.voornaam + " " + persoon!.naam)
        self.mapView.addAnnotation(annotation)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
