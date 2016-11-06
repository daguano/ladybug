//
//  NovoProjetoViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 06/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit

class NovoProjetoViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    var nome: String = "Camila"
    var imageView: UIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.textView.layer.borderWidth = 0.5
        self.textView.layer.borderColor = UIColor.lightGray.cgColor
        self.textView.layer.cornerRadius = 8.0
        self.textView.clipsToBounds = true
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
