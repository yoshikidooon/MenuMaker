//
//  PreviewViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/16.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit

class PreviewViewController: UIViewController {
    
    @IBOutlet var menuImageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    //ポップアップ１
    @IBAction func enterTapped1(_ sender: Any) {
        
        var alertTextField: UITextField?

            let alert = UIAlertController(
                 title: "Menuを編集する",
                 message: "Menuを追加してください",
                 preferredStyle: UIAlertController.Style.alert
              )
        
            alert.addTextField(
               configurationHandler: {(textField: UITextField!) in
                   alertTextField = textField
                   textField.text = self.label1.text
            })
        
            alert.addAction(
               UIAlertAction(
                   title: "Cancel",
                   style: UIAlertAction.Style.cancel,
                   handler: nil))
        
            alert.addAction(
                UIAlertAction(
                   title: "OK",
                   style: UIAlertAction.Style.default) { _ in
                     if let text = alertTextField?.text {
                       self.label1.text = text
                     }
               }
           )
           self.present(alert, animated: true, completion: nil)
    }
    
    //ポップアップ２
    @IBAction func enterTapped2(_ sender: Any) {
        
        var alertTextField: UITextField?

            let alert = UIAlertController(
                 title: "Menuを編集する",
                 message: "Menuを追加してください",
                 preferredStyle: UIAlertController.Style.alert
              )
        
            alert.addTextField(
               configurationHandler: {(textField: UITextField!) in
                   alertTextField = textField
                   textField.text = self.label2.text
            })
        
            alert.addAction(
               UIAlertAction(
                   title: "Cancel",
                   style: UIAlertAction.Style.cancel,
                   handler: nil))
        
            alert.addAction(
                UIAlertAction(
                   title: "OK",
                   style: UIAlertAction.Style.default) { _ in
                     if let text = alertTextField?.text {
                       self.label2.text = text
                     }
               }
           )
           self.present(alert, animated: true, completion: nil)
    }
    
    //ポップアップ３
    @IBAction func enterTapped3(_ sender: Any) {
        
        var alertTextField: UITextField?

            let alert = UIAlertController(
                 title: "Menuを編集する",
                 message: "Menuを追加してください",
                 preferredStyle: UIAlertController.Style.alert
              )
        
            alert.addTextField(
               configurationHandler: {(textField: UITextField!) in
                   alertTextField = textField
                   textField.text = self.label3.text
            })
        
            alert.addAction(
               UIAlertAction(
                   title: "Cancel",
                   style: UIAlertAction.Style.cancel,
                   handler: nil))
        
            alert.addAction(
                UIAlertAction(
                   title: "OK",
                   style: UIAlertAction.Style.default) { _ in
                     if let text = alertTextField?.text {
                       self.label3.text = text
                     }
               }
           )
           self.present(alert, animated: true, completion: nil)
    }
    
    //ポップアップ４
    @IBAction func enterTapped4(_ sender: Any) {
        
        var alertTextField: UITextField?

            let alert = UIAlertController(
                 title: "Menuを編集する",
                 message: "Menuを追加してください",
                 preferredStyle: UIAlertController.Style.alert
              )
        
            alert.addTextField(
               configurationHandler: {(textField: UITextField!) in
                   alertTextField = textField
                   textField.text = self.label4.text
            })
        
            alert.addAction(
               UIAlertAction(
                   title: "Cancel",
                   style: UIAlertAction.Style.cancel,
                   handler: nil))
        
            alert.addAction(
                UIAlertAction(
                   title: "OK",
                   style: UIAlertAction.Style.default) { _ in
                     if let text = alertTextField?.text {
                       self.label4.text = text
                     }
               }
           )
           self.present(alert, animated: true, completion: nil)
    }
    
    //ポップアップ５
    @IBAction func enterTapped5(_ sender: Any) {
        
        var alertTextField: UITextField?

            let alert = UIAlertController(
                 title: "Menuを編集する",
                 message: "Menuを追加してください",
                 preferredStyle: UIAlertController.Style.alert
              )
        
            alert.addTextField(
               configurationHandler: {(textField: UITextField!) in
                   alertTextField = textField
                   textField.text = self.label5.text
            })
        
            alert.addAction(
               UIAlertAction(
                   title: "Cancel",
                   style: UIAlertAction.Style.cancel,
                   handler: nil))
        
            alert.addAction(
                UIAlertAction(
                   title: "OK",
                   style: UIAlertAction.Style.default) { _ in
                     if let text = alertTextField?.text {
                       self.label5.text = text
                     }
               }
           )
           self.present(alert, animated: true, completion: nil)
    }
    
    //ポップアップ６
    @IBAction func enterTapped6(_ sender: Any) {
        
        var alertTextField: UITextField?

            let alert = UIAlertController(
                 title: "Menuを編集する",
                 message: "Menuを追加してください",
                 preferredStyle: UIAlertController.Style.alert
              )
        
            alert.addTextField(
               configurationHandler: {(textField: UITextField!) in
                   alertTextField = textField
                   textField.text = self.label6.text
            })
        
            alert.addAction(
               UIAlertAction(
                   title: "Cancel",
                   style: UIAlertAction.Style.cancel,
                   handler: nil))
        
            alert.addAction(
                UIAlertAction(
                   title: "OK",
                   style: UIAlertAction.Style.default) { _ in
                     if let text = alertTextField?.text {
                       self.label6.text = text
                     }
               }
           )
           self.present(alert, animated: true, completion: nil)
    }
    
       
     
    //スクリーンショットを撮るメソッド
    func getScreenShot(windowFrame: CGRect) -> UIImage {

           UIGraphicsBeginImageContextWithOptions(CGSize(width: 500,height: 650), false, 0.0)
           let context: CGContext = UIGraphicsGetCurrentContext()!
           self.view.layer.render(in: context)
           let capturedImage : UIImage = UIGraphicsGetImageFromCurrentImageContext()!
           UIGraphicsEndImageContext()

           return capturedImage
          
    }
       
       
       //スクリーンショットをボタンをタップして実行する
    @IBAction func tapButton() {
             getScreenShot(windowFrame: CGRect(x:30,y: 100,width: 300,height:
                  500))
             let image = getScreenShot(windowFrame: self.view.bounds)
             UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
    }
       
    
    //Topに戻る
    @IBAction func toTop() {
        self.dismiss(animated: true, completion: nil)
    }

   

}
