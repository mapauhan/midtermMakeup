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
    var selectedApps: [App]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //cellNib
        let appCell = UINib(nibName: "AppCellTableViewCell", bundle: nil)
        self.tableView.register(appCell, forCellReuseIdentifier: "myCell")
        
        
        let category = self.selectedCategory!
//        var selectedApp: App
        
        // passes url from selectedCategory
        let url = category
            
            AF.request(url).responseJSON { (response) in
                if response.result.isSuccess {
                    print(response.result.value!)
                    self.appData = response.result.value as! [String:Any]
                    var myfeed = Feed(self.appData) as! [String:Any]
                    var myResult = Results(myfeed)
                    
                    

                  // var result = self.appData["feed"]![0]
                    
                    let selectedApp = App(self.appData)
                    print(myResult)
                    
                    //selectedApp.name = App.init(["result"["name"]]) as! String
                }
            }
        
        }
    
        func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 5
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! AppCellTableViewCell
            //cell.nameLbl =
            return cell
            
            
            
        }
}

