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
    
    //OOP Specialization
    var result: Results?
    
    init (_ appData: Results) {
        
        print(result?.devName)
//
//
//        let nameR = result![0]["name"] as! String
//        let devNameR = result[0]["artistName"] as! String
//        let releaseDateR = result[0]["releaseDate"] as! String

//        self.name = nameR
//        self.devName = devNameR
//        self.releaseDate = releaseDateR
//        
    }
    
}

class Feed {
    var feedData: [String:Any]
    
    init(_ feedData: [String:Any]) {
        self.feedData = feedData["feed"] as! [String:Any]
       
    }
    
}

class Results {
    
    var result: [[String:Any]]
    var appName: String?
    var devName: String?
    var releaseDate: String?
    
    init(_ resultData: Feed) {
    self.result = resultData[Feed]
        print(result)
       // self.appName = result["name"] as! String
        
    }
}
