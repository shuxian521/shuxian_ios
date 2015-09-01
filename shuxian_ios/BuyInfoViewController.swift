//
//  BuyInfoViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/9/1.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit


class BuyInfoViewController: UIViewController {

    @IBOutlet weak var commodityImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.red

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
