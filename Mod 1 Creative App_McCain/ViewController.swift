//
//  ViewController.swift
//  Mod 1 Creative App_McCain
//
//  Created by SEAN MCCAIN on 8/28/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var itemNameField: UITextField!
    @IBOutlet weak var itemPriceField: UITextField!
    @IBOutlet weak var tableViewOutlet: UITableView!
    var items = ["Apple"]
    var prices = ["0.50"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        

    }

    @IBAction func addItemButton(_ sender: UIButton) {
        
        if(itemNameField.text != "" && itemPriceField.text != ""){
            
            items.append(itemNameField.text!)
            prices.append(itemPriceField.text!)
            itemNameField.text = ""
            itemPriceField.text = ""
            
        }
        tableViewOutlet.reloadData()
        
    }
    
}

