//
//  ClaimsViewController.swift
//  NoblrMenuPOC
//
//  Created by Kanwar Sudeep Singh Sandhu on 14/05/18.
//  Copyright © 2018 Kanwar Sudeep Singh Sandhu. All rights reserved.
//

import UIKit
import React
class ClaimsViewController: UIViewController {

    
    @IBOutlet weak var reactViewContainerView: UIView!
    
    
    var reactView: RCTRootView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        commonInit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func commonInit(){
        
        addReactView()
    }
    
    
    func addReactView(){
        
        reactView = RCTRootView(
            bundleURL: URL(string: "http://172.16.0.30:8081/index.ios.bundle?platform=ios"),
            moduleName: "AddRatingApp",
            initialProperties: nil,
            launchOptions: nil)
        
        reactView.frame = reactViewContainerView.bounds
        reactViewContainerView.addSubview(reactView)
    }
    

}
