//
//  StartUpViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/17.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit

class StartUpViewController: UIViewController {
    
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        label.text = "Menu\nMaker"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
