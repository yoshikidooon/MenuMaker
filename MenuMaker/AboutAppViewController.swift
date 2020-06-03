//
//  AboutAppViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/30.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class AboutAppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view.
        
    }
    
    
        
    
    //閉じる
    @IBAction func toback(_ sender: UIButton) {

               //この下の1行を追加
               self.dismiss(animated: true, completion: nil)
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
