//
//  ViewController.swift
//  ReconMessages
//
//  Created by Brett Schumann on 26/06/2017.
//  Copyright © 2017 Brett Schumann. All rights reserved.
//

import UIKit
import FirebaseAuth


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        
        
        Auth.auth().signIn(withEmail: "brett.schumann@t101.com", password: "m0nk3y77") { (user, error) in
            
            let dataService = DataService()
            dataService.createUser(user: user!)
            
            print("Working " + (user?.uid)!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

