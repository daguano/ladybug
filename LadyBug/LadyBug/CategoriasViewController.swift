//
//  CategoriasViewController.swift
//  LadyBug
//
//  Created by Felipe Daguano on 05/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import UIKit

class CategoriasViewController: UIViewController {

    @IBOutlet weak var categoria1Button: UIButton!
    @IBOutlet weak var categoria2Button: UIButton!
    @IBOutlet weak var categoria3Button: UIButton!
    @IBOutlet weak var categoria4Button: UIButton!
    @IBOutlet weak var categoria5Button: UIButton!
    @IBOutlet weak var categoria6Button: UIButton!
    
    @IBOutlet weak var acessoriosImage: UIImageView!
    @IBOutlet weak var petsImage: UIImageView!
    @IBOutlet weak var vestuarioImage: UIImageView!
    @IBOutlet weak var decoracaoImage: UIImageView!
    @IBOutlet weak var alimentosImage: UIImageView!
    @IBOutlet weak var cosmeticosImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barButton = UIBarButtonItem()
        barButton.title = " "
        self.navigationController?.navigationBar.topItem?.backBarButtonItem = barButton
        
        categoria1Button.addTarget(self, action: #selector(self.projetos), for: .touchUpInside)
        categoria2Button.addTarget(self, action: #selector(self.projetos), for: .touchUpInside)
        categoria3Button.addTarget(self, action: #selector(self.projetos), for: .touchUpInside)
        categoria4Button.addTarget(self, action: #selector(self.projetos), for: .touchUpInside)
        categoria5Button.addTarget(self, action: #selector(self.projetos), for: .touchUpInside)
        categoria6Button.addTarget(self, action: #selector(self.projetos), for: .touchUpInside)

        acessoriosImage.layer.masksToBounds = false;
        acessoriosImage.layer.cornerRadius = 8.0
        acessoriosImage.clipsToBounds = true
        acessoriosImage.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
        acessoriosImage.layer.shadowRadius = 5;
        acessoriosImage.layer.shadowOpacity = 0.5;
        
        petsImage.layer.cornerRadius = 8.0
        petsImage.clipsToBounds = true
        vestuarioImage.layer.cornerRadius = 8.0
        vestuarioImage.clipsToBounds = true
        decoracaoImage.layer.cornerRadius = 8.0
        decoracaoImage.clipsToBounds = true
        alimentosImage.layer.cornerRadius = 8.0
        alimentosImage.clipsToBounds = true
        cosmeticosImage.layer.cornerRadius = 8.0
        cosmeticosImage.clipsToBounds = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func projetos(_ sender: UIButton!) {
        //let projetos = self.storyboard?.instantiateViewController(withIdentifier: "Projetos") as! ProjetosViewController
        //self.present(projetos, animated: true, completion: nil)
    }

}
