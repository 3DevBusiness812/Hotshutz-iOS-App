//
//  AddToCardVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 22/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class AddToCardVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    

    
    
    
    
    @IBOutlet weak var tblCardList: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tblCardList.delegate = self
        self.tblCardList.dataSource = self
        
        
       
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tblCardList.dequeueReusableCell(withIdentifier: "CardListCellClass", for: indexPath) as! CardListCellClass
        
        return cell
        
    }
    
    
  
   
    @IBAction func btnCheckOut(_ sender: UIButton) {
        
      
        
        
        
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
    //
    //
                              
                 }
                 
                 
                 @IBAction func btnMyOrder(_ sender: UIButton) {
                      let obj = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: String.init(describing: MyOrderListVC.self)) as! MyOrderListVC
                                            self.navigationController?.pushViewController(obj, animated: false)
                                 
                                 
                                 
                    }
                    
                    
                    



    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
