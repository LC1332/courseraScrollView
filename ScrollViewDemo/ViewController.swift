//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by CHENG LI on 16/2/3.
//  Copyright © 2016年 CHENG LI. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let usingDoubleTap = false;
        if( usingDoubleTap )
        {
            zoomTapGestureRecongizer.numberOfTapsRequired = 2
        }
        else
        {
            zoomTapGestureRecongizer.enabled = false
            //self.remo
            scrollView.removeGestureRecognizer( zoomTapGestureRecongizer )
            //delete( zoomTapGestureRecongizer )
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet var zoomTapGestureRecongizer: UITapGestureRecognizer!
    
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return imageView;
    }
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        if( zoomTapGestureRecongizer.numberOfTapsRequired == 2 )
        {
            print( "Double Tapped!" )
        }
        else
        {
            print( "Tapped" )
        }
        
        var targetScale = scrollView.zoomScale
        if( scrollView.zoomScale < 1.1 )
        {
            targetScale = 1.5 * scrollView.zoomScale
        }
        else
        {
            targetScale = scrollView.zoomScale / 1.5
        }
        
        UIView.animateWithDuration(0.4, animations: {()->Void in self.scrollView.zoomScale = targetScale } )
    }
}

