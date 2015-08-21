//
//  HomeCollectionViewController.swift
//  shuxian_ios
//
//  Created by SongLijun on 15/8/20.
//  Copyright © 2015年 itjh. All rights reserved.
//

import UIKit
import SwiftColor


private let reuseIdentifier = "Cell"

class HomeCollectionViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        //添加collectionView Header
        let headerView: ParallaxHeaderView = ParallaxHeaderView.parallaxHeaderViewWithImage(UIImage(named: "mytop"), forSize: CGSizeMake((self.collectionView?.frame.width)!, 200)) as! ParallaxHeaderView
        self.collectionView?.addSubview(headerView)
        
        //设置navigationBar背景颜色
        self.navigationController?.navigationBar.barTintColor = Color(hexString: "#228B22")
        //设置collectionView背景颜色
        self.collectionView?.backgroundColor = Color.whiteColor()

        
    }
    
    override func viewDidAppear(animated: Bool) {
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 100
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
          let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! HomeCollectionViewCell
        cell.name.text = "蔬菜"
        
        if indexPath.row % 3 == 0{
            cell.homeCellImage.sd_setImageWithURL(NSURL(string: "http://imgcdn.xuxian.com/upload/2015/07/17/20150717102512934.jpg"))
        }else if indexPath.row % 5 == 0 {
            cell.homeCellImage.sd_setImageWithURL(NSURL(string: "http://imgcdn.xuxian.com/upload/2015/08/20/20150820021222293.jpg"), placeholderImage: UIImage(named: "mytop"))
        }else if indexPath.row % 9 == 0 {
            cell.homeCellImage.sd_setImageWithURL(NSURL(string: "http://imgcdn.xuxian.com/upload/2015/08/20/20150820022651500.jpg"), placeholderImage: UIImage(named: "mytop"))
            
        }else{
            cell.homeCellImage.sd_setImageWithURL(NSURL(string: "http://imgcdn.xuxian.com/upload/2015/07/28/20150728082155116.jpg"), placeholderImage: UIImage(named: "mytop"))
            
        }
        
        return cell
    }
    
    
    // MARK:UICollectionViewDelegateFlowLayout
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        return CGSizeMake((self.view.frame.width-10)/2, 190);

        
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
        
        
        
        return UIEdgeInsetsMake(5, 0, 5, 0);

    }
    
    
    

    // MARK: UICollectionViewDelegate
    
    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
