//
//  ViewController.swift
//  midtermMakeup
//
//  Created by Handschu, Maria on 3/29/19.
//  Copyright © 2019 Handschu, Maria. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    var appData = AppsData.urls
    var categories = [String]()
    var selectedCategory: String?
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categories.append(contentsOf: appData.keys)
        
    }
    
    //passes data between viewcontrollers 
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "appsSegue" {
            let destinationVC = segue.destination as! AppsViewController
            destinationVC.selectedCategory = self.selectedCategory //sends the url
//
            
        }
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "catCell", for: indexPath)
        cell.textLabel?.text = categories[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = categories[indexPath.row] // = Key
        let url = appData[category]
        self.selectedCategory = url! //selectedCategory accesses the value from the Key
        
        print(url!)
        performSegue(withIdentifier: "appsSegue", sender: nil)
        
    }
}




