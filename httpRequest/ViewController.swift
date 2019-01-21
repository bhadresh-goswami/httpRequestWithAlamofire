//
//  ViewController.swift
//  httpRequest
//
//  Created by Mac on 21/01/19.
//  Copyright © 2019 bhadresh. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        Alamofire.request("https://restcountries.eu/rest/v2/all", method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).responseJSON { (data) in
            print("data:\(data.result.value!)")
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

