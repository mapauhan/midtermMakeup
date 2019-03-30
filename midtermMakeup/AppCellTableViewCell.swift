//
//  AppCellTableViewCell.swift
//  midtermMakeup
//
//  Created by Handschu, Maria on 3/29/19.
//  Copyright © 2019 Handschu, Maria. All rights reserved.
//

import UIKit

class AppCellTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var developerLbl: UILabel!
    @IBOutlet weak var genreLbl: UILabel!
    @IBOutlet weak var releaseDateLbl: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
