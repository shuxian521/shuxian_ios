//
//  BuyInfoViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/9/1.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit
import GMStepper

class BuyInfoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        
//        m_mainImgView.layer.cornerRadius = 6;
//        m_mainImgView.layer.masksToBounds = YES;
        //设置view 矩形圆角
        self.view.layer.cornerRadius = 6
        self.view.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeButtonPressed(sender: UIButton) {
//        
//        [self.presentingPopinViewController dismissCurrentPopinControllerAnimated:YES completion:^{
//            NSLog(@"Popin dismissed !");
//            }];
        self.presentingPopinViewController()?.dismissCurrentPopinControllerAnimated(true, completion: { () -> Void in
            
            print("退出")
            
        })
        
        

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
