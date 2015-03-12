//
//  LoginViewController.swift
//  HaiShang
//
//  Created by mAir on 2015/3/12.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
    @IBAction func closeBtnAction(sender: AnyObject)
    {
        self.dismissViewControllerAnimated(true, completion: { () -> Void in
            
        })
    }

}
