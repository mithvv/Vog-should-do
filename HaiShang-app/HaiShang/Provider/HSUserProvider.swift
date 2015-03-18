//
//  HSUserProvider.swift
//  HaiShang
//
//  Created by mAir on 2015/3/16.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit

class HSUserProvider: NSObject {

    class var sharedInstance: HSUserProvider
    {
        struct Static {
            static let instance: HSUserProvider = HSUserProvider()
        }
        return Static.instance
    }
    
    func hasLogin() -> Bool
    {
        if(AVUser.currentUser() != nil) {
            return true
        } else {
            return false
        }

    }

}
