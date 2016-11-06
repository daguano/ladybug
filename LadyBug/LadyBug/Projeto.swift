//
//  Projeto.swift
//  LadyBug
//
//  Created by Felipe Daguano on 06/11/16.
//  Copyright © 2016 Hackaton. All rights reserved.
//

import Foundation
import UIKit

class Projeto {
    
    var nome: String?
    var image: UIImageView?
    var descricao: String?
    var categoria: String = ""
    var valor: Double?
    
    func setDescricao(descricao: String) {
        self.descricao = descricao
        
        // Categorizar o projeto através do Watson
        let requestURL: NSURL = NSURL(string: "https://dl.dropboxusercontent.com/u/10149729/test.json")!
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(url: requestURL as URL)
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest as URLRequest) {
            (data, response, error) -> Void in
            
            let httpResponse = response as! HTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            if (statusCode == 200) {
                print("Arquivo baixado")
                do {
                    let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String: Any]
                    
                    if let classes = json["classes"] as? [[String: AnyObject]] {
                        self.categoria = (classes[0]["class_name"] as! String?)!
                    }
                } catch {
                    print("error serializing JSON: \(error)")
                }
                
                print(self.categoria)
            }
        }
        
        task.resume()
        
    }
    
}
