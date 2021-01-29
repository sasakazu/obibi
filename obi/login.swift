//
//  login.swift
//  obi
//
//  Created by 笹倉一也 on 2021/01/29.
//

import UIKit
import Firebase

class login: UIViewController {
    
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var passTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func login(_ sender: Any) {
        

        
        guard let email = emailTF.text, let password = passTF.text else {
              return
          }

          Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
              if (user != nil && error == nil) {
                
                
              }
            
          }
        
        
    }
    
    
    
    
    @IBAction func logout(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
        
        do {
          try firebaseAuth.signOut()
        } catch let signOutError as NSError {
          print ("Error signing out: %@", signOutError)
        }
          
        
    }
    

}
