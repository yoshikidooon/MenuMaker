//
//  TutorialVideoPlayerViewController.swift
//  MenuMaker
//
//  Created by 藤田佳己 on 2020/06/03.
//  Copyright © 2020 Fujita Fujimon. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation

class TutorialVideoPlayerViewController: AVPlayerViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 動画ファイルを再生する
        let url = Bundle.main.url(forResource: "アプリ説明動画", withExtension: "mp4")
        self.player = AVPlayer(url: url!)

        // Do any additional setup after loading the view.
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
