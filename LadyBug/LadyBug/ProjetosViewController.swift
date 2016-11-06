//
//  ProjetosViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 05/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit

class ProjetosViewController: UIViewController {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barButton = UIBarButtonItem()
        barButton.title = " "
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = barButton
        
        imageView = UIImageView(image: UIImage(named: "Lista de Produtos.png"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 375.0, height: imageView.frame.height * 375.0 / imageView.frame.width)
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = imageView.bounds.size
        scrollView.contentSize = CGSize(width: 375.0, height: imageView.frame.height)
        scrollView.autoresizingMask = UIViewAutoresizing.flexibleHeight
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        
        let button = UIButton(frame: CGRect(x: 100, y: 0, width: 340, height: 200))
        scrollView.addSubview(button)
        //button.backgroundColor = UIColor(red: 0x5c/0xff, green: 0xc7/0xff, blue: 0xc1/0xff, alpha: 1)
        button.setTitle(" ", for: UIControlState())
        button.center = self.view.center
        button.layer.cornerRadius = 8
        //button.layer.borderWidth = 1
        button.center.y -= 230
        button.addTarget(self, action: #selector(self.confirmar), for: .touchUpInside)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

    func confirmar(_ sender: UIButton!) {
        let confirmar = self.storyboard?.instantiateViewController(withIdentifier: "Confirmar") as! ConfirmarViewController
        //self.present(confirmar, animated: true, completion: nil)
        self.navigationController?.pushViewController(confirmar, animated: true)
    }

}
