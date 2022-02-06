//
//  SignupVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 18/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class SignupVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func btnGetOtp(_ sender: UIButton) {
        
   let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: VerificationCodeVC.self)) as! VerificationCodeVC
                                      
                                self.navigationController?.pushViewController(obj, animated: true)
                     
        
        
        
        
        
        
    }
    
    
    
    
    
    @IBAction func btnBack(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func btnLogin(_ sender: UIButton) {
        let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: LoginVC.self)) as! LoginVC
                               
                         self.navigationController?.pushViewController(obj, animated: true)
              
      
        
    }
    
    
}
    
    
    
    
    


