//
//  PhotoView.swift
//  ScrollViewDemo
//
//  Created by CHENG LI on 16/2/3.
//  Copyright © 2016年 CHENG LI. All rights reserved.
//

import UIKit

class PhotoView: UIImageView{
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches, withEvent: event)
        print( "touchesBegan" )
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesMoved(touches, withEvent: event)
        print( "touchesMoved" )
        if let touch = touches.first {
            let location = touch.locationInView(self)
            print( "x:\(location.x) y:\(location.y)" )
        }
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesEnded(touches , withEvent: event)
        print( "touchesEnded" )
    }
    
    override func touchesCancelled(touches: Set<UITouch>?, withEvent event: UIEvent?) {
        super.touchesCancelled(touches , withEvent: event)
    }

}
