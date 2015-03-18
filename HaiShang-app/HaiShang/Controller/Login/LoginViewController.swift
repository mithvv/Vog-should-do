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
    @IBOutlet weak var sendAuthCodeBtn: UIButton!
    @IBOutlet weak var bgScrollView: UIScrollView!
    
    @IBOutlet weak var usernameTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var mobileTf: UITextField!
    @IBOutlet weak var authCodeTf: UITextField!
    
    
    var isLogin : Bool = true;


    override func viewDidLoad() {
        super.viewDidLoad()

        self.bgScrollView .bk_whenTapped { () -> Void in
            self.bgScrollView.endEditing(true)
            return
        }

        self.resetLoginOrRegisterUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        usernameTf.becomeFirstResponder()
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
    
    @IBAction func mainBtnAction()
    {
        if(isLogin) {
            self.loginAction()
        } else {
            self.registerAction()
        }
    }
    @IBAction func sendAuthCodeBtnAction()
    {
        let user : AVUser = AVUser()
        user.username = usernameTf.text
        user.password =  passwordTf.text
        user.mobilePhoneNumber = mobileTf.text;
        
        var err: NSError?
        user.signUp(&err)
    }
    
    func resetLoginOrRegisterUI()
    {
        self.title = isLogin ? "登录" : "注册"
        registerSubView.hidden = isLogin
        changeStatusBtn.setTitle(isLogin ? "没有帐号？去注册" : "已有帐号，直接登录？", forState:UIControlState.Normal);
        mainBtn.setTitle(isLogin ? "登录" : "注册", forState:UIControlState.Normal)
    }
    
    func loginAction()
    {
        AVUser.logInWithUsernameInBackground(usernameTf.text, password: passwordTf.text) { (user, err) -> Void in
            NSLog("\(user):\(err)")
        }
    }
    
    func registerAction()
    {
        let user : AVUser = AVUser()
        user.username = usernameTf.text
        user.password =  passwordTf.text
        user.mobilePhoneNumber = mobileTf.text;
        
        user.signUpInBackgroundWithBlock { (suc, err) -> Void in
            NSLog("\(suc):\(err)")
        }
    }

}
