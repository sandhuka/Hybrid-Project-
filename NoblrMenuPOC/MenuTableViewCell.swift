//
//  MenuTableViewCell.swift
//  NoblrMenuPOC
//
//  Created by Kanwar Sudeep Singh Sandhu on 14/05/18.
//  Copyright © 2018 Kanwar Sudeep Singh Sandhu. All rights reserved.
//

import UIKit

class MenuTableViewCell: UITableViewCell {

   
    @IBOutlet weak var label: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
