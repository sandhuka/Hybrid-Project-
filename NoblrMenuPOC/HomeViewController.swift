//
//  ViewController.swift
//  NoblrMenuPOC
//
//  Created by Kanwar Sudeep Singh Sandhu on 14/05/18.
//  Copyright © 2018 Kanwar Sudeep Singh Sandhu. All rights reserved.
//

import UIKit


class HomeViewController: UIViewController {

    var sideMenuViewController: MenuViewController!
    var openedMenu: Bool = false
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sideMenuViewController = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        sideMenuViewController.view.frame = self.view.frame
        
     
    }

    @IBAction func menuButtonPressed(_ sender: Any) {
        
        toggleMenu()
        
    }
    
    
    //MARK:- Toggle menu
    func toggleMenu(){
        
        if(openedMenu){
            UIView.animate(withDuration: 0.5) {
            
                self.sideMenuViewController.willMove(toParentViewController: nil)
                self.sideMenuViewController.view.removeFromSuperview()
                self.sideMenuViewController.removeFromParentViewController()
            }
        
 
        }
        else{
   
            UIView.animate(withDuration: 0.5, animations: {
               
                self.addChildViewController(self.sideMenuViewController)
                self.view.addSubview(self.sideMenuViewController.view)
                self.sideMenuViewController.didMove(toParentViewController: self)
                
            })
 
        }

        openedMenu = !openedMenu
        
        
    }


    
    
}


