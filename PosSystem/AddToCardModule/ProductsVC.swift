//
//  ProductsVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 24/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    
    
    
    @IBOutlet weak var tblProductList: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblProductList.delegate = self
        self.tblProductList.dataSource = self

       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return 2
            
          }
          
          func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tblProductList.dequeueReusableCell(withIdentifier: "ProductListCellClass", for: indexPath) as! ProductListCellClass
            
            
            
            
            
            return cell
          }
        
      
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: ProductListVC.self)) as! ProductListVC
            self.navigationController?.pushViewController(obj, animated: true)
                                           
    }
        
        @IBAction func btnAddToCard(_ sender: UIButton) {
            let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: AddToCardVC.self)) as! AddToCardVC
                                                          
                  self.navigationController?.pushViewController(obj, animated: true)
                                         
                  
            
            
            
            
            
            
        }
        
        
        @IBAction func btnNotification(_ sender: UIButton) {
            let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: NotificationVC.self)) as! NotificationVC
                                                    
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

    


