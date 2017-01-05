//
//  ResultTableViewCell.swift
//  TestWebserviceSwift
//
//  Created by Toseefhusen Khilji on 05/01/17.
//  Copyright © 2017 Toseef Khilji. All rights reserved.
//

import UIKit

class ResultTableViewCell: UITableViewCell {

    @IBOutlet weak var lbltitle: UILabel!
    @IBOutlet weak var lblArtist: UILabel!
    @IBOutlet weak var lblDetail: UILabel!
    @IBOutlet weak var lblPrice: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
