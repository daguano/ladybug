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
        // Natural Language Classifier
        
        //curl -G -u "0ade0e1b-8414-4bf4-bd3c-37ba1ade85ce":"AcQlqftXZxI6" "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/e82f62x108-nlc-4025/classify" --data-urlencode "text=E as calcinha?"
        
        let username = "0ade0e1b-8414-4bf4-bd3c-37ba1ade85ce"
        let password = "AcQlqftXZxI6"
        let loginString = String(format: "%@:%@", username, password)
        let loginData = loginString.data(using: String.Encoding.utf8)!
        let base64LoginString = loginData.base64EncodedString()
        
        let requestURL: NSURL = NSURL(string: "https://gateway.watsonplatform.net/natural-language-classifier/api/v1/classifiers/e82f62x108-nlc-4025/classify?text=calcinha")!
        
        let urlRequest: NSMutableURLRequest = NSMutableURLRequest(url: requestURL as URL)
        urlRequest.setValue("Basic \(base64LoginString)", forHTTPHeaderField: "Authorization")
        urlRequest.httpMethod = "GET"
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest as URLRequest) {
            (data, response, error) -> Void in
            
            let httpResponse = response as! HTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            print("request")
            
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
