//
//  PreviewViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/05/16.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit

class Preview6ViewController: UIViewController {
    
    @IBOutlet var menuImageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
    @IBOutlet var stackview: UIStackView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    //ポップアップ１
    @IBAction func enterTapped1(_ sender: Any) {
        
        var alertTextField: UITextField?
        
        let alert = UIAlertController(
            title: "Menu1を編集する",
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
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        alert.addAction(
            UIAlertAction(
                title: "決定",
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
            title: "Menu2を編集する",
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
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        alert.addAction(
            UIAlertAction(
                title: "決定",
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
            title: "Menu3を編集する",
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
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        alert.addAction(
            UIAlertAction(
                title: "決定",
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
            title: "Menu4を編集する",
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
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        alert.addAction(
            UIAlertAction(
                title: "決定",
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
            title: "Menu5を編集する",
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
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        alert.addAction(
            UIAlertAction(
                title: "決定",
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
            title: "Menu6を編集する",
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
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        alert.addAction(
            UIAlertAction(
                title: "決定",
                style: UIAlertAction.Style.default) { _ in
                    if let text = alertTextField?.text {
                        self.label6.text = text
                    }
            }
        )
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    //スクリーンショットを撮るメソッド
    @IBAction func getScreenShot() {
        
        let renderer = UIGraphicsImageRenderer(size: menuImageView.bounds.size)
        let image = renderer.image { ctx in
            menuImageView.drawHierarchy(in: menuImageView.bounds, afterScreenUpdates: true)
            label1.drawHierarchy(in: stackview.convert(label1.frame, to: menuImageView), afterScreenUpdates: true)
            label2.drawHierarchy(in: stackview.convert(label2.frame, to: menuImageView), afterScreenUpdates: true)
            label3.drawHierarchy(in: stackview.convert(label3.frame, to: menuImageView), afterScreenUpdates: true)
            label4.drawHierarchy(in: stackview.convert(label4.frame, to: menuImageView), afterScreenUpdates: true)
            label5.drawHierarchy(in: stackview.convert(label5.frame, to: menuImageView), afterScreenUpdates: true)
            label6.drawHierarchy(in: stackview.convert(label6.frame, to: menuImageView), afterScreenUpdates: true)
        }
        
        
        //alertを表示
        var _: UITextField?
        
        let alert = UIAlertController(
            title: "保存が完了しました",
            message: "アルバムに保存しました",
            preferredStyle: UIAlertController.Style.alert
        )
        
        alert.addAction(
            UIAlertAction(
                title: "OK",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        //スクショをカメラロールに保存する
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
    
    
    //スクリーンショットを撮るメソッド
    //@IBAction func getScreenShot() {
    //    UIGraphicsBeginImageContextWithOptions(menuImageView.frame.size, false, 0.0)
    //   view.drawHierarchy(in: view.frame, afterScreenUpdates: true)
    //    let screenShotImage:UIImage = UIGraphicsGetImageFromCurrentImageContext()!  //スリーンショットがUIImage型で取得できる
    //    UIGraphicsEndImageContext()
    
    
    //    UIImageWriteToSavedPhotosAlbum(screenShotImage, nil, nil, nil)
    
    //  }
    
    
    //Topに戻るボタンの実装と、アラートの表示（未完成）
    @IBAction func toTop(_ sender: Any) {
        
        var _: UITextField?
        
        let alert = UIAlertController(
            title: "保存していない場合\nデータは残りません",
            message: "本当にホームに戻りますか",
            preferredStyle: UIAlertController.Style.alert
        )
        
        alert.addAction(
            UIAlertAction(
                title: "キャンセル",
                style: UIAlertAction.Style.cancel,
                handler: nil))
        
        alert.addAction(
            UIAlertAction(
                title: "ホームへ",
                style: UIAlertAction.Style.default) { _ in
                    //OKボタンを押すと画面遷移
                    let storyboard: UIStoryboard = self.storyboard!
                    let home = storyboard.instantiateViewController(withIdentifier: "home")
                    self.present(home, animated: true, completion: nil)
            }
        )
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    
    
}

