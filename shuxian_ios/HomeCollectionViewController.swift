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
        //        let headerView: ParallaxHeaderView = ParallaxHeaderView.parallaxHeaderViewWithImage(UIImage(named: "mytop"), forSize: CGSizeMake((self.collectionView?.frame.width)!, 200)) as! ParallaxHeaderView
        
        //
        //
        //
        //        self.collectionView?.addSubview(scrollView)
        //
        //
        var adView:AdView = AdView()
        //图片地址集合
        let imageURL = [ "https://ss0.baidu.com/-Po3dSag_xI4khGko9WTAnF6hhy/super/whfpf%3D425%2C260%2C50/sign=a41eb338dd33c895a62bcb3bb72e47c2/5fdf8db1cb134954a2192ccb524e9258d1094a1e.jpg",
            "http://c.hiphotos.baidu.com/image/w%3D400/sign=c2318ff84334970a4773112fa5c8d1c0/b7fd5266d0160924c1fae5ccd60735fae7cd340d.jpg",
            "http://www.5858baypgs.com/img/aHR0cDovL3BpYzE4Lm5pcGljLmNvbS8yMDEyMDEwNS8xMDkyOTU0XzA5MzE1MTMzOTExNF8yLmpwZw==.jpg"
        ]
        
        //图片对应的title
        let titles  = ["dd","ee","ff"]
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        adView = AdView.adScrollViewWithFrame(CGRect(x: 0, y: 64, width: UIScreen.mainScreen().bounds.size.width, height: 190), imageLinkURL: imageURL, placeHoderImageName: "mytop", pageControlShowStyle: UIPageControlShowStyle.Left) as! AdView
        
        
        
        //是否滚动
        adView.isNeedCycleRoll = true
        
        adView.setAdTitleArray(titles, withShowStyle: AdTitleShowStyle.Right)
        
        adView.adMoveTime = 3.0
        
        //        //点击图片回调
        adView.callBack = { (index ,imageURL) ->Void in
            
                print("你点击了\(index) 下标图片 --> 图片地址：\(imageURL)" )
 
        }
        //
        self.collectionView?.addSubview(adView)
        //
        //
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
        //设置间距
        return UIEdgeInsetsMake(5, 0, 5, 0);
        
    }
    
    
    
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return CGSizeMake(self.view.frame.width, 300)
        
        
    }
    
    
    //    //MARK: 滑动操作
    //    override func  scrollViewDidScroll(scrollView: UIScrollView) {
    //        if (scrollView == self.collectionView){
    //            let header: ParallaxHeaderView = self.collectionView.tableHeaderView as! ParallaxHeaderView
    //            header.layoutHeaderViewForScrollViewOffset(scrollView.contentOffset)
    //            self.tableView.tableHeaderView = header
    //        }
    //    }
    //
    
    
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
