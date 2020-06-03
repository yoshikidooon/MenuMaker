//
//  chooseMenuViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/20.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit


class chooseMenuViewController: UIViewController {
        
    @IBOutlet var imageView: UIImageView!
    
    var index: Int = 0
    var menuArray: [menu] = []
    @IBOutlet var label : UILabel!
    

    override func viewDidLoad() {
            super.viewDidLoad()
            
            //menuを追加する
             menuArray.append(menu(imageName: "menu1"))
             menuArray.append(menu(imageName: "menu2"))
             menuArray.append(menu(imageName: "menu3"))
            
            setUI()
    }
    

    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
    }
        
    func setUI() {
            imageView.image = menuArray[index].getImage()
    }
    
    //決定ボタン
    @IBAction func decideButton(_ sender: Any) {
        if index == 0 {
            self.performSegue(withIdentifier: "menu1", sender: nil)
        } else if index == 1 {
            self.performSegue(withIdentifier: "menu2", sender: nil)
        } else if index == 2 {
            self.performSegue(withIdentifier: "menu3", sender: nil)
        }
    }
    
          
    //前の画像へ
    @IBAction func mae() {
        if(index <= 2 && index > 0){
                index = index - 1
        } else {
                index = 2
        }
        
        if index == 0 {
            label.text = "menu1"
        } else if index == 1 {
            label.text = "menu2"
        } else if index == 2 {
        label.text = "menu3"
        }
        
            setUI()
    }
        
    //次の画像へ
    @IBAction func tugi() {
        if index < 2{
            index = index + 1
        } else {
            index = 0
        }
        
        if index == 0 {
            label.text = "menu1"
        } else if index == 1 {
            label.text = "menu2"
        } else if index == 2 {
        label.text = "menu3"
        }
        
            setUI()
    }
    
    //ホーム画面に戻る
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
        
        
    }


