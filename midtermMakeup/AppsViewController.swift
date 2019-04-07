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
    var appData: [String:Any]?
    var selectedApp: String?
    var selectedCategory: String?
    //var selectedApps: [App]?
   // var myFeed: [String:Any]?
    var myFeed: Feed?
    var myResult: [[String:Any]]?

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
                    print("response = \(response.result.value!)")
                    self.appData = response.result.value as? [String:Any]
                    
                    if self.appData != nil {
                        self.myFeed = Feed(self.appData!["feed"] as! [String : Any])
                        
 //                       self.myFeed = (self.appData!["feed"] as! [String:Any])
 //                       self.myResult = (self.myFeed!["results"] as! [[String:Any]])
                    }
   //                 self.myResult = (self.myFeed!["results"] as! [[String:Any]])
                    //let myApp = Feed(self.appData)
                    //let myResults = Results(myApp as! [String:Any])
                    
                    self.tableView.reloadData()
                    
                    //debugPrint("myfeed = \(myFeed)")
                    
                    

                  // var result = self.appData["feed"]![0]
                    
                    //let selectedApp = App(self.appData)
                   // print(self.myResult)
                    
                    //selectedApp.name = App.init(["result"["name"]]) as! String
                }
            }
        
        }
    
        func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if self.myFeed == nil {
                return 0
            } else {
                return (self.myFeed!.feedData.count)
            }
            
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = self.tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! AppCellTableViewCell
            
            self.myFeed?.getResults(rowIndex:indexPath.row)
            cell .nameLbl.text = myFeed?.appName
            cell.developerLbl.text = myFeed?.devName
            cell.releaseDateLbl.text = myFeed?.releaseDate
            
            let myGenres = myFeed?.genres![0]
            cell.genreLbl.text = myGenres?["name"] as! String
            
            
            
     //       cell.nameLbl.text = self.myFeed!.feedData[indexPath.row]["artistName"] as? String
            
            return cell
            
            
            
        }
}

