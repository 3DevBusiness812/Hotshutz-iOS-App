//
//  AllCatogiesVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 24/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class AllCatogiesVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnPrduct(_ sender: UIButton) {
          
       
        let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: ProductsVC.self)) as! ProductsVC
                                    
            self.navigationController?.pushViewController(obj, animated: true)
                   
        
        
        
        
        
        
        
        
        
        
          
      }
    
    
      @IBAction func btnProfile(_ sender: UIButton) {
             let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: ProfileVC.self)) as! ProfileVC
                                         
                                   self.navigationController?.pushViewController(obj, animated: false)
                        
                        
                        
           }
           
           
           @IBAction func btnHome(_ sender: UIButton) {
                let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: HomeViewController.self)) as! HomeViewController
                                            
                                      self.navigationController?.pushViewController(obj, animated: false)
                           
                           
                           
              }
              
              
              @IBAction func btnCatigory(_ sender: UIButton) {
                   let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: AllCatogiesVC.self)) as! AllCatogiesVC

                                         self.navigationController?.pushViewController(obj, animated: true)


                              
                 }
                 
                 
                 @IBAction func btnMyOrder(_ sender: UIButton) {
                      let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: MyOrderListVC.self)) as! MyOrderListVC
                                            self.navigationController?.pushViewController(obj, animated: false)
                                 
                                 
                                 
                    }
                    
                    
                    






    }
    
    
    
    
    
    
    
    

