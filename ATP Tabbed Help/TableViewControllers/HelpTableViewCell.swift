//
//  HelpTableViewCell.swift
//  ATPTabbedHelp8
//
//  Created by Steven Berkey on 5/23/18.
//  Copyright © 2018 90Rev. All rights reserved.
//

import UIKit

class HelpTableViewCell: UITableViewCell {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
