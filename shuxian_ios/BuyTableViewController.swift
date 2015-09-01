//
//  BuyTableViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/31.
//  Copyright © 2015年 itjh. All rights reserved.
//

/**
    购物车
*/
import UIKit
import SwiftColor


class BuyTableViewController: UITableViewController {
    @IBOutlet var footerView: UIView!

    @IBOutlet var headerView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置UINavigationBar title颜色，字体
        self.navigationController?.navigationBar.barTintColor = Color(hexString:"#FEFEFE")
        if let barFont = UIFont(name: "AvenirNextCondensed-DemiBold", size: 18.0) {
            self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:Color(hexString: "#228B22"), NSFontAttributeName:barFont]
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
        return 10
    }

    
//    - (BKTPopinTransitionStyle)transitionStyleForIndexPath:(NSIndexPath *)indexPath
//    {
//    if (indexPath.section == 0) {
//    return indexPath.row;
//    }
//    return 0;
//    }
    
    func transitionStyleForIndexPath(indexPath: NSIndexPath) -> Int {
        
        return 2
    }
   
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("buyCell", forIndexPath: indexPath)

        // Configure the cell...
 
        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        let popin:BuyInfoViewController = BuyInfoViewController()
        

        //设置view样式
        popin.setPopinTransitionStyle(.CrossDissolve)
        
        
        let blurParameters = self.blurParameters()
        
        
        popin.setPopinOptions(.DisableAutoDismiss )
        
        
        //设置弹出样式为 中间浮出
        popin.setPopinAlignment(.Centered)
        
        blurParameters.alpha = 1.0
        blurParameters.radius = 8.0
        blurParameters.saturationDeltaFactor = 1.8
        blurParameters.tintColor = Color.white.alpha(0.3)
        popin.setBlurParameters(blurParameters)
        //
        
//        [popin setPopinOptions:[popin popinOptions]|BKTPopinBlurryDimmingView];

        popin.setPopinOptions(.BlurryDimmingView)
        //
        
        
//        //Define a custom transition style
//        
        if popin.popinTransitionStyle() == .Custom{
            
            popin.setPopinCustomInAnimation({ (popinController, initialFrame, finalFrame) -> Void in
                
                popinController.view.frame = finalFrame;
                                popinController.view.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_4 / 2));
            })
            
            popin.setPopinCustomOutAnimation { (popinController, initialFrame, finalFrame) -> Void in
                
                popinController.view.frame = finalFrame
                popinController.view.transform = CGAffineTransformMakeRotation(CGFloat(M_PI_2))
                
            }
            
        }
        
        
        //设置view范围
        popin.setPreferedPopinContentSize(CGSizeMake(popin.view.frame.width - 20, popin.view.frame.height - 150))
    
        popin.setPopinTransitionDirection(.Top)
        
        self.navigationController?.presentPopinController(popin, animated: true, completion: { () -> Void in
            
            
            
            print("弹窗")
        })
        
    }
    
    @IBAction func close(segue:UIStoryboardSegue) {
        
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
    
    override func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        return headerView
    }
    
    override func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 45
    }
    
    override func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return footerView
        
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
