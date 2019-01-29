//
//  ItemTableViewCell.swift
//  SoloLearnApp
//
//  Created by Ricky Yang on 1/27/19.
//  Copyright © 2019 Ricky Yang. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var nameLabel: UILabel!
}
