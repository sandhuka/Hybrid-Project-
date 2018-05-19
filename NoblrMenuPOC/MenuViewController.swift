//
//  MenuViewController.swift
//  NoblrMenuPOC
//
//  Created by Kanwar Sudeep Singh Sandhu on 14/05/18.
//  Copyright © 2018 Kanwar Sudeep Singh Sandhu. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // MARK:- Declaration for Menu items
    var menuArray = ["Home","Claims","Profile","Section", "Settings"]
    var HomeVC: HomeViewController!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MenuTableViewCell
        cell.label.text = menuArray[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return menuArray.count
    }
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell  = tableView.cellForRow(at: indexPath)
        cell!.contentView.backgroundColor = .white

    }
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell  = tableView.cellForRow(at: indexPath as IndexPath)
        cell!.contentView.backgroundColor = .clear
    }
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedIndex = indexPath.row
        
        if (selectedIndex == 0){
            
        }
        else if (selectedIndex == 1){
            let mainstoreyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let claimsVC = mainstoreyboard.instantiateViewController(withIdentifier: "ClaimsViewController") as! ClaimsViewController
            self.navigationController?.pushViewController(claimsVC, animated: true)
        }
        
        else if (selectedIndex == 2){
            let mainstoreyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let profileVC = mainstoreyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
            self.navigationController?.pushViewController(profileVC, animated: true)
        }
        
        else if (selectedIndex == 3){
            let mainstoreyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let sectionVC = mainstoreyboard.instantiateViewController(withIdentifier: "SectionViewController") as! SectionViewController
            self.navigationController?.pushViewController(sectionVC, animated: true)
        }
        else if (selectedIndex == 4){
            let mainstoreyboard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let settingVC = mainstoreyboard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
            self.navigationController?.pushViewController(settingVC, animated: true)
        }
}

}

