//
//  HSTabBarController.swift
//  HaiShang
//
//  Created by mAir on 2015/3/16.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit

class HSTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidLayoutSubviews() {
        if (HSUserProvider.sharedInstance.hasLogin() == false) {
            let loginNav : UINavigationController = UIStoryboard(name: "Login", bundle: nil).instantiateInitialViewController() as UINavigationController
            self.presentViewController(loginNav, animated: false, completion: nil)
        }
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
