//
//  App.swift
//  midtermMakeup
//
//  Created by Handschu, Maria on 3/29/19.
//  Copyright © 2019 Handschu, Maria. All rights reserved.
//

import Foundation

class App {
    var name: String?
    var devName: String?
    var genre: String?
    var releaseDate: String?
    
    init (_ appData: [String:Any]) {
        
        let feed = appData["feed"] as! [String:Any]
        let result = feed["results"] as! [[String:Any]]
        
        let nameR = result[0]["name"] as! String
        let devNameR = result[0]["artistName"] as! String
        let releaseDateR = result[0]["releaseDate"] as! String

        self.name = nameR
        self.devName = devNameR
        self.releaseDate = releaseDateR
        
    }
    
}

