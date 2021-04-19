//
//  ViewController.swift
//  抖动.swif
//
//  Created by alan comb on 2021/4/19.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let imagePath = Bundle.main.path(forResource:"启动图", ofType: "png")
        let newImage = UIImage(contentsOfFile:imagePath!)
        let bgView = UIImageView(image: newImage)
        self.view.addSubview(bgView)
        bgView.frame  = CGRect(x: 0, y: 0, width:100, height: 100)
        
    }
    
    
     
    
    
}

