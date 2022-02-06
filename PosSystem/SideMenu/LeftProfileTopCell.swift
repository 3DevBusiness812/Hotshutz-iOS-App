//
//  LeftProfileTopCell.swift
//  APAuth
//
//  Created by admin on 11/01/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class LeftProfileTopCell: UITableViewCell {
   
    @IBOutlet var lblTitle: UILabel!
    @IBOutlet weak var imageviewIcon: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selectionStyle = .none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    override func layoutSubviews() {
    super.layoutSubviews()

    }
    
    
}



