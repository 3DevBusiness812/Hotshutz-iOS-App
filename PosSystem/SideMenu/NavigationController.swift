//
//  NavigationController.swift
//  LGSideMenuControllerDemo
//
import LGSideMenuController
class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isHidden =  true
        navigationBar.isTranslucent = true
        navigationBar.barTintColor = .white
        
        navigationController?.interactivePopGestureRecognizer?.isEnabled = false

    }

    override var shouldAutorotate : Bool {
        return true
    }
    
    override var prefersStatusBarHidden : Bool {
        return UIApplication.shared.statusBarOrientation.isLandscape && UI_USER_INTERFACE_IDIOM() == .phone
    }
    
//    override var preferredStatusBarStyle : UIStatusBarStyle {
//        return .default
//    }
    
    
    override var preferredStatusBarUpdateAnimation : UIStatusBarAnimation {
        if sideMenuController != nil {
        return sideMenuController!.isRightViewVisible ? .slide : .fade
        } else {
            return .slide
        }
    }

    
}
