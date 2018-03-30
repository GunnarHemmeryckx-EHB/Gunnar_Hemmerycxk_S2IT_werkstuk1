//
//  TableViewController.swift
//  Werkstuk1
//
//  Created by Gunnar Hemmeryckx on 30/03/18.
//  Copyright © 2018 Gunnar Hemmeryckx. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var persoon1 = Persoon(naam: "Kenobi", voornaam: "Obi-wan", afbeelding: "ObiWanKenobi", straat: "Jundland Wastes", huisnummer: 3, postcode: 1374, gemeente: "Tatooine", telefoonnummer: "0455671023", coordLat: 33.740833, coordLong: 10.734951)
    var persoon2 = Persoon(naam: "Jinn", voornaam: "Qui-Gon", afbeelding: "QuiGon_Jinn", straat: "Form IV", huisnummer: 12, postcode: 1734, gemeente: "Ataru", telefoonnummer: "0434211697", coordLat: 41.073485, coordLong: 14.327004)
    
    //ARRAY AANMAKEN
    var persoonArray = [Persoon]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        persoonArray.append(persoon1)
        persoonArray.append(persoon2)
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

        // Configure the cell...
        cell.imageView?.image = UIImage(named: persoonArray[indexPath.row].afbeelding)//CELL IMAGE INSTELLEN -> GAAT ZOEKEN NAAR EEN IMAGE IN ASSETS MET MEEGEGEVEN NAAM
        cell.textLabel?.text = persoonArray[indexPath.row].voornaam + " " + persoonArray[indexPath.row].naam//CELL TITEL = TITEL VAN ITEM
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let nextvc = segue.destination as? DetailViewController {
            let indexpath = self.tableView.indexPathForSelectedRow!
            nextvc.persoon = self.persoonArray[indexpath.row]
        }
    }
    

}
