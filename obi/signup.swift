//
//  signup.swift
//  obi
//
//  Created by 笹倉一也 on 2021/01/29.
//

import UIKit
import Firebase

class signup: UIViewController {
    
    
    @IBOutlet weak var emailTF: UITextField!
    
    @IBOutlet weak var passTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func signup(_ sender: Any) {
      
        
        guard let email = emailTF.text, let password = passTF.text else {
              return
          }
          
          Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
              if (user != nil && error == nil) {
                  print("register successed")
                  self.emailTF.text = "";
                  self.passTF.text = ""
              } else {
                  print("register failed")
              }
          }
        
        
    }
    

}
