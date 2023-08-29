//
//  ViewController.swift
//  syoryuken
//
//  Created by kaoru matsunaga on 2023/08/28.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var imageView: UIImageView!
    // 配列
    var imageAttack : Array<UIImage> = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // ファイル1から20までアタックファイルを開く
        for i in 1...20 {
            if let attackImage = UIImage(named: "attack\(i)") {
                imageAttack.append(attackImage)
            }
        }
    }
    @IBAction func buttun(_ sender: Any) {
        imageView.animationImages = imageAttack
        // 1.5秒間隔
        imageView.animationDuration = 2
        // 1回繰り返し
        imageView.animationRepeatCount = 1
        // アニメーションを開始
        imageView.startAnimating()
    }
}
