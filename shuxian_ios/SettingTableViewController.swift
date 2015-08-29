//
//  SettingTableViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/28.
//  Copyright © 2015年 itjh. All rights reserved.
//

/**
    设置Table
*/

import UIKit

class SettingTableViewController: UITableViewController {
    
    var selectPay:NSUserDefaults = NSUserDefaults.standardUserDefaults()

    @IBOutlet weak var pay: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
       
    }
    
    override func viewWillAppear(animated: Bool) {
        
        //显示支付方式
        if selectPay.valueForKey("pay") != nil{
            pay.hidden = false
            if  (selectPay.valueForKey("pay") as! Int) == 0 {
                pay.text = "微信支付"
            }else {
                pay.text = "支付宝支付"
            }
        }else{
            pay.text = "支付宝支付"
        }
        
        self.tabBarController?.tabBar.hidden = true

    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        switch section {
        case 0:
            return 3
        case 1:
            return 1
        default:
            return 1
            
        }
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
//        UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: nil)

        
        
//        let cell = tableView.dequeueReusableCellWithIdentifier(nil, forIndexPath: indexPath)
        
        if indexPath.section == 0{
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }

        // Configure the cell...

        return cell
    }*/

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
