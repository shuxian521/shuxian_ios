//
//  PayTableViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/28.
//  Copyright © 2015年 itjh. All rights reserved.
//

/**
    支付方式列表
*/

import UIKit

class PayTableViewController: UITableViewController {
    @IBOutlet weak var weixinPayOKImage: UIImageView!
    @IBOutlet weak var aliPayOKImage: UIImageView!
    
    var selectPay:NSUserDefaults = NSUserDefaults.standardUserDefaults()

    override func viewDidLoad() {
        super.viewDidLoad()
        if selectPay.valueForKey("pay") != nil{
            if  (selectPay.valueForKey("pay") as! Int) == 0 {
                self.weixinPayOKImage.hidden = false
                self.aliPayOKImage.hidden = true
            }else {
                self.weixinPayOKImage.hidden = true
                self.aliPayOKImage.hidden = false
            }
        }else{
            self.weixinPayOKImage.hidden = false
            self.aliPayOKImage.hidden = true
        }
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
        return 2
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
//        print("点击了第\(indexPath.section)组，第\(indexPath.row)个")
        
        switch indexPath.row{
            
        case 0:
            self.weixinPayOKImage.hidden = false
            self.aliPayOKImage.hidden = true
            //保存用户选择的支付方式0:微信 1:支付宝
            selectPay.setObject(0, forKey: "pay")
        case 1:
            self.aliPayOKImage.hidden = false
            self.weixinPayOKImage.hidden = true
            //保存用户选择的支付方式0:微信 1:支付宝
            selectPay.setObject(1, forKey: "pay")
        default:
            return
        }
        
        self.selectPay.synchronize()
        self.navigationController?.popViewControllerAnimated(true)

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
