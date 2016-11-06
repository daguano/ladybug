//
//  InitialViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 05/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    @IBOutlet weak var investirButton: UIButton!
    
    @IBOutlet weak var receberButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        investirButton.addTarget(self, action: #selector(self.login), for: .touchUpInside)
        receberButton.addTarget(self, action: #selector(self.login), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func login(_ sender: UIButton!) {
        let login = self.storyboard?.instantiateViewController(withIdentifier: "Login") as! LoginViewController
        self.present(login, animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
