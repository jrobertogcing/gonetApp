//
//  LogInViewController.swift
//  GonetApp
//
//  Created by Jose González on 2/18/19.
//  Copyright © 2019 Gonet. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase
import FirebaseAuth



class LogInViewController: UIViewController,GIDSignInUIDelegate {


    @IBOutlet weak var googleSInButton: GIDSignInButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        // TODO(developer) Configure the sign-in button look/feel
        // ...
        
        
    }
    
    @IBAction func gSignInButtonAction(_ sender: UIButton) {
        
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signIn()
        
        
    }
    
  

}
