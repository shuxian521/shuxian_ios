//
//  CreateOrderViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/9/2.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit
import SwiftColor

class CreateOrderViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.navigationController?.navigationBar.tintColor = Color(hexString: "#228B22")
        self.title = "确认订单"
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 5
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        switch section {
        case 0:
            return 1
        case 1:
            return 2
        case 2:
            return 1
        case 3:
            return 4
        default:
            return 2
            
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
    
        
        
        return cell
        
    }
    
    
    // MARK: 设置分组标题
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var titleStr = ""
        switch section {
        case 0:
            titleStr = "🏡提货点"
        case 1:
            titleStr = "💰支付信息"
        case 2:
            titleStr = "优惠券"
        case 3:
            titleStr = "🍆商品清单"
        default:
            titleStr = "价格清单"
        }
        
        return titleStr
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
