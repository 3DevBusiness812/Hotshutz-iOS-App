//
//  MyOrderListVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 21/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class MyOrderListVC: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    

    
    
    
    @IBOutlet weak var tblOrderList: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblOrderList.delegate = self
        self.tblOrderList.dataSource = self
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return 2
        
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblOrderList.dequeueReusableCell(withIdentifier: "OrderListCellclass", for: indexPath) as! OrderListCellclass
        
         cell.btnViewDetails.tag = indexPath.row
              
                
            cell.btnViewDetails.addTarget(self, action: #selector(self.onDetails(btnViewDetails:)), for: .touchUpInside)
     
        
        
        
        return cell
      }
    
  
    
    @objc func onDetails(btnViewDetails : UIButton)  {
           
           let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: MyOrderDetailsVC.self)) as!MyOrderDetailsVC
           
           self.navigationController?.pushViewController(obj, animated: true)

       }

    
    @IBAction func btnAddToCard(_ sender: UIButton) {
        let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: AddToCardVC.self)) as! AddToCardVC
                                                      
              self.navigationController?.pushViewController(obj, animated: true)
                                     
              
        
        
        
        
        
        
    }
    
    
    @IBAction func btnNotification(_ sender: UIButton) {
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
