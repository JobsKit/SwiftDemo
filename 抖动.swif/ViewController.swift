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
        
        self.view.backgroundColor = HEXCOLOR(c: 0xED4146);
        
        let imagePath = Bundle.main.path(forResource:"启动图", ofType: "png")
        let newImage = UIImage(contentsOfFile:imagePath!)
        let bgView = UIImageView(image: newImage)
        self.view.addSubview(bgView)
        bgView.frame  = CGRect(x: 0, y: 0, width:100, height: 100)
        bgView.snp.makeConstraints { (make) in
            make.left.right.top.equalTo(0);
            make.bottom.equalTo(width(-80));
        }
        bgView.contentMode = .scaleToFill;
        
        let provider = MoyaProvider<DDNetworkManager>()
        provider.request(DDNetworkManager.getToken, callbackQueue: nil, progress: { (response) in
            print("response = \(response)")
        }) { (result) in
            switch result {
            case let .success(result):
                do {
                    try print("result.mapJSON() = \(result.mapJSON())")
                } catch {
                    print("MoyaError.jsonMapping(result) = \(MoyaError.jsonMapping(result))")
                }
            default:
                break
            }
            print("result = \(result)")
        }
        
    }
    
    
     
    
    
}

