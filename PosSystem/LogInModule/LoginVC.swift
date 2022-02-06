//
//  LoginVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 18/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnSignUP(_ sender: UIButton) {
        
        let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: SignupVC.self)) as! SignupVC
                               
                         self.navigationController?.pushViewController(obj, animated: true)
              
              
              
        
        
        
        
    }
    

    @IBAction func btnLogin(_ sender: UIButton) {
    }
}
