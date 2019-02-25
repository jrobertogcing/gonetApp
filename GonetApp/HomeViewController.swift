//
//  HomeViewController.swift
//  GonetApp
//
//  Created by Jose González on 2/24/19.
//  Copyright © 2019 Gonet. All rights reserved.
//

import UIKit
import Firebase
import GoogleSignIn

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logOutButtonAction(_ sender: UIButton) {
        
        GIDSignIn.sharedInstance().signOut()
        
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "LogInViewController") as! LogInViewController
        self.present(nextViewController, animated:true, completion:nil)
    }
    

}
