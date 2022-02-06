//
//  ChatListVC.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 22/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class ChatListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    
    
    @IBOutlet weak var tblChat: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tblChat.delegate = self
        self.tblChat.dataSource = self
        
        
    }
    
    
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblChat.dequeueReusableCell(withIdentifier: "ChatListCellClass", for: indexPath) as! ChatListCellClass
                         
                   
                   
                   return cell
    }
    
    
    
    
    

    @IBAction func btnBack(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
        
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



