//
//  LoginViewController.swift
//  HaiShang
//
//  Created by mAir on 2015/3/12.
//  Copyright (c) 2015年 mithvv. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var registerSubView: UIView!
    @IBOutlet weak var changeStatusBtn: UIButton!
    @IBOutlet weak var mainBtn: UIButton!
    
    var isLogin : Bool = false;


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
    
    @IBAction func changeStatusBtnAction(sender: AnyObject)
    {
        self.isLogin = !isLogin
        self.resetLoginOrRegisterUI()
    }
    
    func resetLoginOrRegisterUI()
    {
        self.title = isLogin ? "登录" : "注册"
        registerSubView.hidden = isLogin
        changeStatusBtn.setTitle(isLogin ? "没有帐号？去注册" : "已有帐号，直接登录？", forState:UIControlState.Normal);
        mainBtn.setTitle(isLogin ? "登录" : "注册", forState:UIControlState.Normal)
    }

}
