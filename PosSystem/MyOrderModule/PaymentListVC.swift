//
//  PaymentListVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 21/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class PaymentListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    
    @IBOutlet weak var tblPaymentHistory: UITableView!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblPaymentHistory.delegate = self
        self.tblPaymentHistory.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
                return 2
              
            }
            
            func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
              
              let cell = tblPaymentHistory.dequeueReusableCell(withIdentifier: "PaymentHistoryCellClass", for: indexPath) as! PaymentHistoryCellClass
              
              
           
              
              
              
              return cell
            }
          
          func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
             
  //            let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: PaymentHistoryVC.self)) as! PaymentHistoryVC
  //
  //            self.navigationController?.pushViewController(obj, animated: true)
  //
  //
  //
              
              
              
              
              
              
          }

}
