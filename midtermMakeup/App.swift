//
//  App.swift
//  midtermMakeup
//
//  Created by Handschu, Maria on 3/29/19.
//  Copyright © 2019 Handschu, Maria. All rights reserved.
//

import Foundation

//class App {
//    var name: String?
//    var devName: String?
//    var genre: String?
//    var releaseDate: String?
//    
//    //OOP Specialization
//    var results: [String:Any]?
//    
//    init (_ appData: [String:Any]) {
//        
//        print(results?["devName"])
////
////
////        let nameR = result![0]["name"] as! String
////        let devNameR = result[0]["artistName"] as! String
////        let releaseDateR = result[0]["releaseDate"] as! String
//
////        self.name = nameR
////        self.devName = devNameR
////        self.releaseDate = releaseDateR
////        
//    }
//    
//}

class Feed {
    var feedData: [[String:Any]]
    
    public private(set) var appName = "" {
        get {
            return feedData[rowIndex]["artistName"] as? String
        }
        set(value) {
            appName = value
        }
    }
    
    var devName: String?
    var releaseDate: String?
    var genres: [[String:Any]]?

    
    init(_ feedData: [String:Any]) {
        self.feedData = feedData["results"] as! [[String:Any]]
        print(feedData)
       
    }
    
    func getResults (rowIndex: Int) {
        
        self.appName = feedData[rowIndex]["artistName"] as? String ?? ""
        self.devName = feedData[rowIndex]["artistName"] as? String ?? ""
        self.releaseDate = feedData[rowIndex]["releaseDate"] as? String ?? ""
        self.genres = feedData[rowIndex]["genres"] as! [[String:Any]]
    }
    
    
    
    
    
}

//class Results {
//
//    //var result: NSArray
//    var appName: String?
//    var devName: String?
//    var releaseDate: String?
//    var genres: [[String:Any]]?
//
//
//    init(_ resultData: [[String:Any]]) {
//        self.appName = resultData["artistName"] as? String
//        self.devName = resultData["artistName"] as? String
//        self.releaseDate = resultData["releaseDate"] as? String
//        self.genres = resultData["genres"] as! [[String:Any]]
//    }
//}
