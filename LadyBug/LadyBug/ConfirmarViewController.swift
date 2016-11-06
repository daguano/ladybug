//
//  ConfirmarViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 06/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit

class ConfirmarViewController: UIViewController {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView = UIImageView(image: UIImage(named: "Produto.png"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 375.0, height: imageView.frame.height * 375.0 / imageView.frame.width)
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = imageView.bounds.size
        scrollView.contentSize = CGSize(width: 375.0, height: imageView.frame.height)
        scrollView.autoresizingMask = UIViewAutoresizing.flexibleHeight
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
        
        let button = UIButton(frame: CGRect(x: 100, y: 90, width: 320, height: 80))
        scrollView.addSubview(button)
        //button.backgroundColor = UIColor(red: 0x5c/0xff, green: 0xc7/0xff, blue: 0xc1/0xff, alpha: 1)
        button.setTitle(" ", for: UIControlState())
        button.center = self.view.center
        button.layer.cornerRadius = 8
        //button.layer.borderWidth = 1
        button.center.y += 650
        button.addTarget(self, action: #selector(self.fim), for: .touchUpInside)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func fim(_ sender: UIButton!) {
        let fim = self.storyboard?.instantiateViewController(withIdentifier: "Fim") as! FimViewController
        //self.present(projetos, animated: true, completion: nil)
        self.navigationController?.pushViewController(fim, animated: true)
    }

}
