//
//  AppsViewController.swift
//  midtermMakeup
//
//  Created by Handschu, Maria on 3/29/19.
//  Copyright © 2019 Handschu, Maria. All rights reserved.
//

import UIKit
import Alamofire

class AppsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    var appData: [String:Any] = [:]
    var selectedApp: String?
    var selectedCategory: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cellNib
        let appCell = UINib.init(nibName: "AppCellTableViewCell", bundle: nil)
        tableView.register(appCell, forCellReuseIdentifier: "myCell")
        tableView.reloadData()
        
        let category = self.selectedCategory!
        var selectedApp: App
        
        // passes url from selectedCategory
        let url = category
            
            AF.request(url).responseJSON { (response) in
                if response.result.isSuccess {
                    print(response.result.value!)
                    self.appData = response.result.value as! [String:Any]
                    var feed = self.appData["feed"]
                    print(feed!)
                   // var result = self.appData["feed"]!["results"]
                    
//
                  //  var result = self.appData["feed"]![0]
                    
                    let selectedApp = App(self.appData)
                    print(selectedApp)
                    
                    //selectedApp.name = App.init(["result"["name"]]) as! String
                }
            }
            
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return appData.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as!
            AppCellTableViewCell
//            let app =
            return cell
            
            
            
        }
}

