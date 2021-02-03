//
//  top.swift
//  obi
//
//  Created by 笹倉一也 on 2021/01/29.
//

import UIKit
import Firebase

class top: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let currentUser = Auth.auth().currentUser?.email
        
        print(currentUser ?? "no user")

        // Do any additional setup after loading the view.
    }
    

 

}
