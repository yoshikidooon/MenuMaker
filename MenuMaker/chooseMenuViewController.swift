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
             menuArray.append(menu(imageName: "menu4"))
             menuArray.append(menu(imageName: "menu5"))
             menuArray.append(menu(imageName: "menu6"))
             menuArray.append(menu(imageName: "menu7"))
             menuArray.append(menu(imageName: "menu8"))
             menuArray.append(menu(imageName: "menu9"))
             menuArray.append(menu(imageName: "menu10"))
        
            
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
        } else if index == 3 {
            self.performSegue(withIdentifier: "menu4", sender: nil)
        } else if index == 4 {
            self.performSegue(withIdentifier: "menu5", sender: nil)
        } else if index == 5 {
            self.performSegue(withIdentifier: "menu6", sender: nil)
        } else if index == 6 {
            self.performSegue(withIdentifier: "menu7", sender: nil)
        } else if index == 7 {
            self.performSegue(withIdentifier: "menu8", sender: nil)
        } else if index == 8 {
            self.performSegue(withIdentifier: "menu9", sender: nil)
        } else if index == 9 {
            self.performSegue(withIdentifier: "menu10", sender: nil)
        }
    }

    
    
          
    //前の画像へ
    @IBAction func mae() {
        if(index <= 9 && index > 0){
                index = index - 1
        } else {
                index = 9
        }
        
        if index == 0 {
            label.text = "menu1"
        } else if index == 1 {
            label.text = "menu2"
        } else if index == 2 {
            label.text = "menu3"
        }else if index == 3 {
            label.text = "menu4"
        }else if index == 4 {
            label.text = "menu5"
        }else if index == 5 {
            label.text = "menu6"
        }else if index == 6 {
            label.text = "menu7"
        }else if index == 7 {
            label.text = "menu8"
        }else if index == 8 {
            label.text = "menu9"
        }else if index == 9 {
            label.text = "menu10"
        }

        
            setUI()
    }
        
    //次の画像へ
    @IBAction func tugi() {
        if index < 9 {
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
        }else if index == 3 {
            label.text = "menu4"
        }else if index == 4 {
            label.text = "menu5"
        }else if index == 5 {
            label.text = "menu6"
        }else if index == 6 {
            label.text = "menu7"
        }else if index == 7 {
            label.text = "menu8"
        }else if index == 8 {
            label.text = "menu9"
        }else if index == 9 {
            label.text = "menu10"
        }
        
        
            setUI()
    }
    
    //ホーム画面に戻る
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
        
        
    }


