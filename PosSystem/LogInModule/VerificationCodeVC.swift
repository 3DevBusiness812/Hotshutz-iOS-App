//
//  VerificationCodeVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 20/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class VerificationCodeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
    
    
    
    
    
    @IBAction func btnBack(_ sender: UIButton) {
        
      self.navigationController?.popViewController(animated: true)
        
        
    }
    
    @IBAction func btnVerifyotp(_ sender: UIButton) {
    navigateToDashBoardScreen()
        
        
        
    }
    
   func navigateToDashBoardScreen()  {
              
              let main = UIStoryboard(name: "Main", bundle: nil)
              
              let objHome = main.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
              
              let navigationController = NavigationController(rootViewController: objHome)
              let mainViewController = MainViewController()
              
              mainViewController.rootViewController = navigationController
              navigationController.navigationBar.isHidden = true
              
              mainViewController.setup(type: UInt(1))
              
              if #available(iOS 10.0, *) {
                  mainViewController.leftViewBackgroundBlurEffect = UIBlurEffect(style: .regular)
              } else {
                  // Fallback on earlier versions
              }
              self.navigationController?.pushViewController(mainViewController, animated: false)
          }
          
      }

      
      
      

