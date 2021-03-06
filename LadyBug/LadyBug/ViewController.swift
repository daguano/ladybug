//
//  ViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 05/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController, FBSDKLoginButtonDelegate {

    var firstTime: Bool = true
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if (FBSDKAccessToken.current() != nil && !firstTime)
        {
            
            //let menu = self.storyboard?.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
            //self.present(menu, animated: true, completion: nil)
            
            let req = FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"email,name,gender,location,work,friends"], tokenString: FBSDKAccessToken.current().tokenString, version: nil, httpMethod: "GET")
            
            req?.start(completionHandler: { (conn, result, error) in
                
                print("Info:::::::::")
                
                if(error == nil)
                {
                    print("result is \(result)")
                }
                else
                {
                    print("error is \(error)")
                }
            })
            
        }
        else {
            firstTime = false
            
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.frame = CGRect(x: 0.0, y: 0.0, width: loginView.frame.width * 1.5, height: loginView.frame.height * 1.5)
            loginView.center = self.view.center
            loginView.center.y += 100
            loginView.readPermissions = ["public_profile", "email", "user_friends", "read_custom_friendlists"]
            loginView.delegate = self
            print("Sem token")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Facebook Delegate Methods
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("User Logged In")
        
        if (FBSDKAccessToken.current() != nil && !firstTime)
        {
            
            //let menu = self.storyboard?.instantiateViewController(withIdentifier: "Menu") as! MenuViewController
            //self.present(menu, animated: true, completion: nil)
            
            let req = FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"email,name,gender,location,work,friends"], tokenString: FBSDKAccessToken.current().tokenString, version: nil, httpMethod: "GET")
            
            req?.start(completionHandler: { (conn, result, error) in
                
                print("Info:::::::::")
                
                if(error == nil)
                {
                    print("result is \(result)")
                }
                else
                {
                    print("error is \(error)")
                }
            })
        }
        else
        {
            print("Sem token")
        }
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }
}

