//
//  PrecosViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 06/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit

class PrecosViewController: UIViewController {

    @IBOutlet weak var preco100Button: UIButton!
    @IBOutlet weak var preco500Button: UIButton!
    @IBOutlet weak var preco400Button: UIButton!
    @IBOutlet weak var preco300Button: UIButton!
    @IBOutlet weak var preco200Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        preco100Button.layer.cornerRadius = 6
        preco100Button.layer.borderWidth = 1.5
        preco100Button.layer.borderColor = UIColor(red: 1.0, green: 75.0/255.0, blue: 75.0/255.0, alpha: 1.0).cgColor


        preco200Button.layer.cornerRadius = 6
        preco200Button.layer.borderWidth = 1.5
        preco200Button.layer.borderColor = UIColor(red: 1.0, green: 75.0/255.0, blue: 75.0/255.0, alpha: 1.0).cgColor

        preco300Button.layer.cornerRadius = 6
        preco300Button.layer.borderWidth = 1.5
        preco300Button.layer.borderColor = UIColor(red: 1.0, green: 75.0/255.0, blue: 75.0/255.0, alpha: 1.0).cgColor

        preco400Button.layer.cornerRadius = 6
        preco400Button.layer.borderWidth = 1.5
        preco400Button.layer.borderColor = UIColor(red: 1.0, green: 75.0/255.0, blue: 75.0/255.0, alpha: 1.0).cgColor
        preco400Button.addTarget(self, action: #selector(self.buttonClicked), for: UIControlEvents.touchUpInside)

        preco500Button.layer.cornerRadius = 6
        preco500Button.layer.borderWidth = 1.5
        preco500Button.layer.borderColor = UIColor(red: 1.0, green: 75.0/255.0, blue: 75.0/255.0, alpha: 1.0).cgColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buttonClicked(sender:UIButton)
    {
        //sender.isSelected = !sender.isSelected;
        
        sender.layer.borderColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        sender.layer.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0).cgColor
        sender.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 0), for:  UIControlState.selected)
        sender.setTitleColor(UIColor(red: 0, green: 0, blue: 0, alpha: 0), for:  UIControlState.normal)
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
