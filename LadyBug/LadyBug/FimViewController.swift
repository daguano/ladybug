//
//  FimViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 06/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit

class FimViewController: UIViewController {

    var scrollView: UIScrollView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView = UIImageView(image: UIImage(named: "Concluir investimento.png"))
        imageView.contentMode = .scaleAspectFit
        imageView.frame = CGRect(x: 0, y: 0, width: 375.0, height: imageView.frame.height * 375.0 / imageView.frame.width)
        
        scrollView = UIScrollView(frame: view.bounds)
        scrollView.backgroundColor = UIColor.black
        scrollView.contentSize = imageView.bounds.size
        scrollView.contentSize = CGSize(width: 375.0, height: imageView.frame.height)
        scrollView.autoresizingMask = UIViewAutoresizing.flexibleHeight
        
        scrollView.addSubview(imageView)
        view.addSubview(scrollView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
