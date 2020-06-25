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
        
        self.player?.play()
        
        // Do any additional setup after loading the view.
    }
    
    
}
