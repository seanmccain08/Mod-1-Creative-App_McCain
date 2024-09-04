//
//  ViewController.swift
//  Mod 1 Creative App_McCain
//
//  Created by SEAN MCCAIN on 8/28/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var itemNameField: UITextField!
    @IBOutlet weak var itemPriceField: UITextField!
    @IBOutlet weak var tableViewOutlet: UITableView!
    var items = ["Apple"]
    var prices = ["0.50"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self

    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    //populates the table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableViewOutlet.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = items[indexPath.row]
        cell.detailTextLabel?.text = "$"+prices[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete{
            
            items.remove(at: indexPath.row)
            prices.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            
        }
        
    }
    
    @IBAction func clearButton(_ sender: UIButton) {
        
        items = []
        prices = []
        tableViewOutlet.reloadData()
        
    }
    
    @IBAction func addItemButton(_ sender: UIButton) {
        
        itemNameField.resignFirstResponder()
        itemPriceField.resignFirstResponder()
        if(itemNameField.text != "" && itemPriceField.text != ""){
            
            items.append(itemNameField.text!)
            prices.append(itemPriceField.text!)
            itemNameField.text = ""
            itemPriceField.text = ""
            
        }
        tableViewOutlet.reloadData()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
    }
    
}

