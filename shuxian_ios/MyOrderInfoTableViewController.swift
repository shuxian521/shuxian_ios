//
//  MyOrderInfoTableViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/26.
//  Copyright © 2015年 itjh. All rights reserved.
//

/**
    订单详情
*/
import UIKit
import SwiftColor

class MyOrderInfoTableViewController: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
//        
        let headerView = UIView()
        headerView.frame = CGRectMake(0, 0, self.view.frame.width, 60)
        headerView.backgroundColor =  Color(hexString: "#228B22")
        self.tableView.tableHeaderView = headerView
        

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    override init(style: UITableViewStyle) {
      super.init(style: UITableViewStyle.Grouped)
        
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> MyOrderInfoTableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("myOrderInfoCell", forIndexPath: indexPath) as! MyOrderInfoTableViewCell
        
        
        print(indexPath.row)
        
        if indexPath.row == 0{
            cell.phoneTextLabel!.text = "手机号："
            cell.phoneNumLabel.text = "18626893929"
            cell.phoneTextLabel.hidden = false
            cell.phoneNumLabel.hidden = false
        } else if indexPath.row == 9{
            //显示总计
            
            cell.totalTextLabel!.text = "总计："
            cell.totalIncomeLabel!.text = "9.90元"
            
            cell.totalTextLabel.hidden = false
            cell.totalIncomeLabel.hidden = false
        }else{
            //显示蔬菜列表
            cell.indexLabel.text = "\(indexPath.row)."
            cell.indexLabel.hidden = false
            
            cell.nameLabel.text = "智利奇异果／2个约250g"
            cell.nameLabel.hidden = false
            
            cell.nameImage.image = UIImage(named: "20150424070327960")
            cell.nameImage.hidden = false
            
            cell.priceLabel.text = "￥9.90"
            cell.priceLabel.hidden = false
            
            cell.amountLabel.text = "2份"
            cell.amountLabel.hidden = false
        }
        
        
        return cell
  
    }

    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
      
        if indexPath.row == 9{
            return 60
        }
        
        return 44
    }
    
   override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat{
        return 60

    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
