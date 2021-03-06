//
//  ViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 05/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LoginViewController: UIViewController, FBSDKLoginButtonDelegate {
    
    var firstTime: Bool = true
    var option: String = ""
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let barButton = UIBarButtonItem()
        barButton.title = " "
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = barButton
        
        if (FBSDKAccessToken.current() != nil && !firstTime)
        {
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
            
            if self.option == "investir" {
                let categorias = self.storyboard?.instantiateViewController(withIdentifier: "Categorias") as! CategoriasViewController
                //self.present(categorias, animated: true, completion: nil)
                self.navigationController?.pushViewController(categorias, animated: true)
            } else {
                let novoProjeto = self.storyboard?.instantiateViewController(withIdentifier: "NovoProjeto") as! NovoProjetoViewController
                //self.present(novoProjeto, animated: true, completion: nil)
                self.navigationController?.pushViewController(novoProjeto, animated: true)
            }
            
        }
        else {
            firstTime = false
            
            let loginView : FBSDKLoginButton = FBSDKLoginButton()
            self.view.addSubview(loginView)
            loginView.frame = CGRect(x: 0.0, y: 0.0, width: loginView.frame.width * 1.8, height: loginView.frame.height * 1.8)
            loginView.center = self.view.center
            loginView.center.y += 100
            loginView.readPermissions = ["public_profile", "email", "user_friends", "read_custom_friendlists"]
            loginView.delegate = self
            print("Sem token")
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    // Facebook Delegate Methods
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        print("User Logged In")
        
        if (FBSDKAccessToken.current() != nil && !firstTime)
        {
            
            let req = FBSDKGraphRequest(graphPath: "me", parameters: ["fields":"email,name,gender,location,work,friends"], tokenString: FBSDKAccessToken.current().tokenString, version: nil, httpMethod: "GET")
            
            req?.start(completionHandler: { (conn, result, error) in
                
                if(error == nil)
                {
                    print("result is \(result)")
                }
                else
                {
                    print("error is \(error)")
                }
            })
            
            if self.option == "investir" {
                let categorias = self.storyboard?.instantiateViewController(withIdentifier: "Categorias") as! CategoriasViewController
                //self.present(categorias, animated: true, completion: nil)
                self.navigationController?.pushViewController(categorias, animated: true)
            } else {
                let novoProjeto = self.storyboard?.instantiateViewController(withIdentifier: "NovoProjeto") as! NovoProjetoViewController
                //self.present(novoProjeto, animated: true, completion: nil)
                self.navigationController?.pushViewController(novoProjeto, animated: true)
            }
            
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

