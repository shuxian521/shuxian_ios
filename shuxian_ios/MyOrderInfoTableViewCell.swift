//
//  MyOrderInfoTableViewCell.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/26.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit

class MyOrderInfoTableViewCell: UITableViewCell {

    
    @IBOutlet weak var phoneTextLabel: UILabel!
    @IBOutlet weak var phoneNumLabel: UILabel!
    
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var nameImage: UIImageView!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    
    
    
    @IBOutlet weak var totalTextLabel: UILabel!
    @IBOutlet weak var totalIncomeLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
