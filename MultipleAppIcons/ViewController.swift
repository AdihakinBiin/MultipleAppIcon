//
//  ViewController.swift
//  MultipleAppIcons
//
//  Created by Abdihakin Elmi on 12/24/20.
//

import UIKit

class ViewController: UIViewController {
let images = ["facebook", "snapChat", "tiktok", "google", "logo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (index, image) in images.enumerated() {
            let button = UIButton(frame: CGRect(x: 150, y: view.safeAreaInsets.top + 300 + CGFloat(index) * 60, width: 60, height: 60))
            button.setImage(UIImage(named: image), for: .normal)
            button.tag = index + 1
            button.addTarget(self, action: #selector(didTabIcon(_:)), for: .touchUpInside)
            view.addSubview(button)
        }
    
    }
    
    @objc private func didTabIcon(_ sender: UIButton){
        if sender.tag == 1 {
            UIApplication.shared.setAlternateIconName("facebook") { (error) in
                if error != nil {
                    print("icon chanded")
                }
            }
        } else if sender.tag == 2 {
            UIApplication.shared.setAlternateIconName("snapChat") { (error) in
                if error != nil {
                    print("icon chanded")
                }
            }
        } else if sender.tag == 3 {
            UIApplication.shared.setAlternateIconName("tiktok") { (error) in
                if error != nil {
                    print("icon chanded")
                }
            }
        } else if sender.tag == 4 {
            UIApplication.shared.setAlternateIconName("google") { (error) in
                if error != nil {
                    print("icon chanded")
                }
            }
        } else if sender.tag == 5 {
            UIApplication.shared.setAlternateIconName(nil) { (error) in
                if error != nil {
                    print("icon chanded")
                }
            }
        }


    }
}

