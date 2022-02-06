//
//  PaymentHistoryVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 21/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class PaymentHistoryVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    
    @IBOutlet weak var tblPaymentHistory: UITableView!
    
    
    
    
   
        override func viewDidLoad() {
            super.viewDidLoad()

            self.tblPaymentHistory.delegate = self
            self.tblPaymentHistory.dataSource = self
        }
        

        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
              return 2

          }

          func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

            let cell = tblPaymentHistory.dequeueReusableCell(withIdentifier: "PaymentHistoryCellClass", for: indexPath) as! PaymentHistoryCellClass

               
                   cell.btnViewDetails.addTarget(self, action: #selector(self.onDetails(btnViewDetails:)), for: .touchUpInside)
            




            return cell
          }

      

    @objc func onDetails(btnViewDetails : UIButton)  {
        
        let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: PaymentDetailsVC.self)) as!PaymentDetailsVC
        
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
