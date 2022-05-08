//
//  ViewController.swift
//  Sound
//
//  Created by MASANAO on 2022/04/30.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    // ドラムを表示する変数をつくる
    @IBOutlet var drumButton: UIButton!
    
    //ドラムのサウンドファイルを読み込んで、プレイヤーをつくる
    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //ドラムがタッチが始まった時に呼ばれる
    @IBAction func touchDownDrumButton(){
        // ドラムが鳴っている画像に切り替える
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        // ドラムの音を巻き戻す
        drumSoundPlayer.currentTime = 0
        
        // ドラムの音を再生する
        drumSoundPlayer.play()
    }
    
    @IBAction func touchUpDrumButton() {
        // ドラムが鳴っていない画像に切り替える
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
    }
}

