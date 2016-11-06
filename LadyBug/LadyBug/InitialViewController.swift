//
//  InitialViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 05/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class InitialViewController: UIViewController {

    @IBOutlet weak var investirButton: UIButton!
    
    @IBOutlet weak var receberButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let barButton = UIBarButtonItem()
        barButton.title = " "
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = barButton
        
        investirButton.addTarget(self, action: #selector(self.login), for: .touchUpInside)
        receberButton.addTarget(self, action: #selector(self.login), for: .touchUpInside)
        
        let loginManager = FBSDKLoginManager()
        loginManager.logOut()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func login(_ sender: UIButton!) {
        //let login = self.storyboard?.instantiateViewController(withIdentifier: "Login") as! LoginViewController
        //self.present(login, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let senderButton: UIButton = sender as! UIButton
        let login: LoginViewController = segue.destination as! LoginViewController
        
        if senderButton === investirButton {
            login.option = "investir"
        }
        else {
            login.option = "receber"
        }
        
    }

}
