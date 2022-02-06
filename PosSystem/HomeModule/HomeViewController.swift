//
//  HomeViewController.swift
//  PosSystem
//
//  Created by Alphawizz Technology on 20/08/20.
//  Copyright © 2020 Alphawizz Technology. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    

    
    
    
    @IBOutlet weak var TopVenderCollection: UICollectionView!
    
    
    @IBOutlet weak var CategoriesCollection: UICollectionView!
    @IBOutlet weak var ProductCollection: UICollectionView!
       
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CategoriesCollection.delegate = self
         self.CategoriesCollection.dataSource = self
        self.ProductCollection.delegate = self
        self.ProductCollection.dataSource = self
        
        self.TopVenderCollection.delegate = self
               self.TopVenderCollection.dataSource = self
        
        
        
        
        
        
        
        registerXib()
        
    }
    
    
    @IBAction func onMenu(_ sender: Any) {
           
           sideMenuController?.showLeftView(animated: true, completionHandler: nil)
       }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == ProductCollection {
             return  4
        }else if collectionView == TopVenderCollection   {
            
            
          return 5
        }else{
            
           return 5
            
        }
        
     
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
           
           if collectionView == ProductCollection {
               let cellProduct = ProductCollection.dequeueReusableCell(withReuseIdentifier: String(describing: WMProductWithCartOptionCollectionViewCell.self), for: indexPath) as! WMProductWithCartOptionCollectionViewCell
               
               
               return cellProduct
               
           } else if collectionView == TopVenderCollection {
                         let cellVender = TopVenderCollection.dequeueReusableCell(withReuseIdentifier: String(describing: TopVenderCell.self), for: indexPath) as! TopVenderCell
                         
                         
                         return cellVender
           
           
           }else {
               let cellIdentifier = "CategoriescellClass"
                             let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath as IndexPath) as! CategoriescellClass
                      
                      
                      return cell
           }
           
       }
       
     
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
         if collectionView == ProductCollection {
                  return CGSize(width: 170, height: 265)
                    }else if collectionView == TopVenderCollection {
                                     return CGSize(width: 250, height: 400)
                                       }else {
                       return CGSize(width: 87, height: 113)
               }
    
    
    
    }
    
    
    
     func registerXib()  {
            
            ProductCollection.register(UINib(nibName: String(describing: WMProductWithCartOptionCollectionViewCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: WMProductWithCartOptionCollectionViewCell.self))
          
         TopVenderCollection.register(UINib(nibName: String(describing: TopVenderCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: TopVenderCell.self))
        
        
        
        
        
        
        
            
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
