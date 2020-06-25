//
//  ViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/16.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //
    //    override func viewDidLoad() {
    //        super.viewDidLoad()
    
    //    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //               //この下の7行を追加
        let ud = UserDefaults.standard
        let firstLunchKey = "firstLunch"
        if ud.bool(forKey: firstLunchKey) {
            ud.set(false, forKey: firstLunchKey)
            ud.synchronize()
            self.performSegue(withIdentifier: "SegueToVideoView", sender: nil)
        }
    }
    
    
    
    
}

