//
//  HomeCollectionViewCell.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/20.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    //商品名称描述
    @IBOutlet weak var name: UILabel!
    //商品图片
    @IBOutlet weak var homeCellImage: UIImageView!
    //销售类型 ps:买一送一
    @IBOutlet weak var selltypeImage: UIImageView!
    //商品价格
    @IBOutlet weak var price: UILabel!
    
    //商品市场价格
    @IBOutlet weak var marketPrice: UILabel!
     
    
}
