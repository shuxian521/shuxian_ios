//
//  WaresInfoViewController.swift
//  shuxian_ios
//
//  Created by Songlijun on 15/9/23.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit

class WaresInfoViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var waresInfoWebView: UIWebView!
    
    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var parView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
         
        
        self.scrollView.contentSize=CGSizeMake(0,1000);
        
        let url = NSURL(string: "http://mobile.xuxian.com/goods/getGoodsDetail/1325")
        
        let request = NSURLRequest(URL: url!)
        
        waresInfoWebView.loadRequest(request)

        scrollView.delegate = self
        
//        self.view.addSubview(scrollView)
        
        scrollView.addSubview(topView)
        scrollView.addSubview(parView)
        scrollView.addSubview(waresInfoWebView)
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
    
        
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
