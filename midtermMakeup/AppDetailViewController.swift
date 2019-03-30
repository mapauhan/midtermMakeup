//
//  AppDetailViewController.swift
//  midtermMakeup
//
//  Created by Handschu, Maria on 3/29/19.
//  Copyright © 2019 Handschu, Maria. All rights reserved.
//

import UIKit

class AppDetailViewController: UIViewController {
    
    var app: String?

    @IBOutlet weak var appTitle: UILabel!
    @IBOutlet weak var devName: UILabel!
    @IBOutlet weak var relDate: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

    @IBAction func closeClicked(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
