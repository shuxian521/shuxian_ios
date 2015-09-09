//
//  CreateOrderViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/9/2.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit
import SwiftColor

class CreateOrderViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var footerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        self.navigationController?.navigationBar.tintColor = Color(hexString: "#228B22")
        self.title = "确认订单"
        
        //设置tableview滚动
        self.tableView.bounces = true
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
       // self.tabBarController?.tabBar.hidden = true
        
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
        
        let cell_thd = tableView.dequeueReusableCellWithIdentifier("thd")
        
        let cell_pay = tableView.dequeueReusableCellWithIdentifier("pay")
        
        let cell_coupon = tableView.dequeueReusableCellWithIdentifier("coupon")
        
        let cell_buyCell = tableView.dequeueReusableCellWithIdentifier("buyCell")

        let cell_price = tableView.dequeueReusableCellWithIdentifier("price")


    
        if indexPath.section == 0{
            return cell_thd!
        }
        
        if indexPath.section == 1{
            return cell_pay!
        }
        
        if indexPath.section == 2{
            return cell_coupon!
        }
        
        if indexPath.section == 3{
            return cell_buyCell!
        }
        
        if indexPath.section == 4{
            return cell_price!
        }
        
        return cell
        
    }
    
    
    // MARK: 设置分组标题
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var titleStr = ""
        switch section {
        case 0:
            titleStr = "🏡 提货点"
        case 1:
            titleStr = "💰 支付信息"
        case 2:
            titleStr = "🎁 优惠券"
        case 3:
            titleStr = "🍆 商品清单"
        default:
            titleStr = "💵 价格清单"
        }
        
        return titleStr
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        var cellHeight:CGFloat = 0
        switch indexPath.section {
        case 0:
            cellHeight = 57
        case 1:
            cellHeight = 44
        case 2:
            cellHeight = 40
        case 3:
            cellHeight = 60

        default:
            cellHeight = 44
        }
        
        return cellHeight
        
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
