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
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
        
        let projeto = Projeto()
        projeto.setDescricao(descricao: self.textView.text)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func dismissKeyboard() {
        view.endEditing(true)
    }

}
