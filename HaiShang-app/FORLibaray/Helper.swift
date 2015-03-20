//
//  Helper.swift
//  HaiShang
//
//  Created by mAir on 20/3/15.
//  Copyright (c) 2015 mithvv. All rights reserved.
//

import Foundation


func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}

