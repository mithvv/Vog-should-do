//
//  MyViewController.swift
//  HaiShang
//
//  Created by mAir on 2015/3/12.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var headerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let loginNav : UINavigationController = UIStoryboard(name: "Login", bundle: nil).instantiateInitialViewController() as UINavigationController
        
        
        headerView.bk_whenTapped { () -> Void in
            self.presentViewController(loginNav, animated: true) { () -> Void in
                
            }
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
