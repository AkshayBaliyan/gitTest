//
//  TableViewCell.swift
//  testGit
//
//  Created by Akshay Baliyan on 10/12/18.
//  Copyright © 2018 Briskon Technologies Private Limited. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lblNumber: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
