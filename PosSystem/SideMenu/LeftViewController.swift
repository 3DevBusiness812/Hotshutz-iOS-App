import UIKit
import SDWebImage

class LeftViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
        
    let kHeaderSectionTag: Int = 6900
    
    @IBOutlet var tableviewList: UITableView!
    @IBOutlet var imageviewProfile: UIImageView!
    @IBOutlet var labelEmail: UILabel!
    @IBOutlet var labelUserName: UILabel!
    
    var expandedSectionHeaderNumber: Int = -1
    var expandedSectionHeader: UITableViewHeaderFooterView!
    var window: UIWindow?
    
    let sectionNames = [["title":"Home",
                         "image" : "Icon feather-home"],
                        
                        ["title":"Notifications",
                        "image" : "11"],
                        
                        ["title":"Order Hisory",
                        "image" : "Icon feather-shopping-bag"],
                        
                        ["title":"Payment History",
                        "image" : "card1"],
                        
                        ["title":"My Inbox",
                        "image" : "Icon feather-inbox"],
                        
                        ["title":"About",
                        "image" : "Icon feather-help-circle"],
                        
                        ["title":"Share With Friends",
                        "image" : "Icon feather-share-2"],
                        
                       
                        ["title":"Logout",
                        "image" : "Icon feather-arrow-left-circle"]]
                        
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableviewList.register(UINib(nibName: "SSSectionHeaderView", bundle: nil), forHeaderFooterViewReuseIdentifier: "SSSectionHeaderView")
        
        let headerNib = UINib.init(nibName: "LeftSideMenuBar", bundle: Bundle.main)
        tableviewList.register(headerNib, forHeaderFooterViewReuseIdentifier: "LeftSideMenuBar")
        tableviewList.tableFooterView = UIView()
        
        NotificationCenter.default.addObserver(self, selector: #selector(refreshUserProfileData), name: Notification.Name("refreshUserProfileData"), object: nil)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.navigationBar.isHidden = true
        
       
        
//        labelEmail.text = GAUser.shared.loginInfoObj.userEmail
//        labelUserName.text = GAUser.shared.loginInfoObj.userFullname
        imageviewProfile.layer.cornerRadius = 45
        imageviewProfile.sd_imageIndicator = SDWebImageActivityIndicator.gray
//        imageviewProfile.sd_setImage(with: URL.init(string: GAUser.shared.loginInfoObj.userImage!)) { (image, error, cache, urls) in
//            if (error != nil) {
//                // Failed to load image
//                self.imageviewProfile.image = UIImage(named: "black_user")
//            } else {
//                // Successful in loading image
//                self.imageviewProfile.image = image
//            }
//        }
  //  }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = false

    }
    
    @objc func refreshUserProfileData(notification: Notification) {
        
//        labelEmail.text = GAUser.shared.loginInfoObj.userEmail
//        labelUserName.text = GAUser.shared.loginInfoObj.userFullname
        imageviewProfile.layer.cornerRadius = 45
        
        imageviewProfile.sd_imageIndicator = SDWebImageActivityIndicator.gray
//        imageviewProfile.sd_setImage(with: URL.init(string: GAUser.shared.loginInfoObj.userImage!)) { (image, error, cache, urls) in
//            if (error != nil) {
//                // Failed to load image
//                self.imageviewProfile.image = UIImage(named: "black_user")
//            } else {
//                // Successful in loading image
//                self.imageviewProfile.image = image
//            }
//        }
    }

    override var prefersStatusBarHidden: Bool {
        return false
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .fade
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sectionNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellIdentifier = "Cell"
        var cell = (tableView.dequeueReusableCell(withIdentifier: CellIdentifier)) as? LeftProfileTopCell
        if cell == nil {
            let nib = Bundle.main.loadNibNamed("LeftCell", owner: self, options: nil)
            cell = nib?[0] as? LeftProfileTopCell
        }
        
        let section = self.sectionNames[indexPath.row]
        cell?.lblTitle?.text = section["title"]
        cell?.imageviewIcon?.image = UIImage.init(named: section["image"]!)

        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
                return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        
        switch indexPath.row {

        case 0:

            sideMenuController?.hideLeftView(animated: true, completionHandler: nil)

        case 1:
            let productListVC = main.instantiateViewController(withIdentifier: String.init(describing: NotificationVC.self)) as! NotificationVC
          self.navigationController?.isNavigationBarHidden = true
            self.navigationController?.pushViewController(productListVC, animated: true)

        case 2:
            let productListVC = main.instantiateViewController(withIdentifier: String.init(describing: MyOrderListVC.self)) as! MyOrderListVC
           self.navigationController?.isNavigationBarHidden = true
            self.navigationController?.pushViewController(productListVC, animated: true)

        case 3:
            let productListVC = main.instantiateViewController(withIdentifier: String.init(describing: PaymentHistoryVC.self)) as! PaymentHistoryVC
          self.navigationController?.isNavigationBarHidden = true
            self.navigationController?.pushViewController(productListVC, animated: true)

        case 4:
            let productListVC = main.instantiateViewController(withIdentifier: String.init(describing: ChatListVC.self)) as! ChatListVC
           self.navigationController?.isNavigationBarHidden = true
            self.navigationController?.pushViewController(productListVC, animated: true)

//        case 5:
//            let productListVC = main.instantiateViewController(withIdentifier: String.init(describing: GAContactUsViewController.self)) as! GAContactUsViewController
//            self.navigationController?.isNavigationBarHidden = false
//            self.navigationController?.pushViewController(productListVC, animated: true)
//
//        case 6:
//            let productListVC = main.instantiateViewController(withIdentifier: String.init(describing: ChangePasswordViewController.self)) as! ChangePasswordViewController
//            self.navigationController?.isNavigationBarHidden = false
//           // productListVC.isFromChangePassword = true
//            self.navigationController?.pushViewController(productListVC, animated: true)
//
//            case 7:
//            let productListVC = main.instantiateViewController(withIdentifier: String.init(describing: TermConditionViewController.self)) as! TermConditionViewController
//            self.navigationController?.isNavigationBarHidden = false
//
//            self.navigationController?.pushViewController(productListVC, animated: true)
//
//
//
//
//        case 8:
//            let activityVC = UIActivityViewController(activityItems: ["Whatever you want to share"], applicationActivities: nil)
//            activityVC.popoverPresentationController?.sourceView = self.view
//            present(activityVC, animated: true, completion: nil)
//            activityVC.completionWithItemsHandler = { (activityType, completed:Bool, returnedItems:[Any]?, error: Error?) in
//
//                if completed  {
//                    self.dismiss(animated: true, completion: nil)
//                }
//            }
//        case 9:
//
//            let popupVC = UIStoryboard(name: "PopUpStoryboard", bundle: nil)
//
//              let logoutVC = popupVC.instantiateViewController(identifier: String.init(describing: GALogoutPopupViewController.self)) as! GALogoutPopupViewController
//            logoutVC.modalPresentationStyle = .overFullScreen
//            logoutVC.delegate = self
//           self.present(logoutVC, animated: true, completion: nil)
//
       default: break
       }
   }
//
//
}
