//
//  AddMenuViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/18.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit
import SwiftUI

class AddMenuViewController: UIViewController {

    @IBOutlet var menuTextField: UITextField!
    
    var menuArray: [Dictionary<String, String>] = []
    
    let saveData = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if saveData.array(forKey: "MENU") != nil {
            menuArray = saveData.array(forKey: "MENU") as! [Dictionary<String, String>]
        }

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func addMenu() {
        let menuDictionary = ["menu": menuTextField.text!]
        
        menuArray.append(menuDictionary)
        saveData.set(menuArray, forKey: "MENU")
        
        let alert = UIAlertController(
                    title: "追加完了",
                       message: "メニューの追加が完了しました",
                       preferredStyle: .alert
                   )
                   alert.addAction(UIAlertAction(
                       title: "OK",
                       style: .default,
                       handler: nil
         ))
        present(alert, animated: true, completion: nil)
        
        menuTextField.text = ""
        
    }
    
    
    
}
    

  

