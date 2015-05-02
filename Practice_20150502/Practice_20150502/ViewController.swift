//
//  ViewController.swift
//  Practice_20150502
//
//  Created by MIMURAAKIRA on 2015/05/02.
//  Copyright (c) 2015年 MIMURAAKIRA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        
        // 背景をオレンジ色にする.
        myLabel.backgroundColor = UIColor.orangeColor()
        
        // 枠を丸くする.
        myLabel.layer.masksToBounds = true
        
        // コーナーの半径.
        myLabel.layer.cornerRadius = 20.0
        
        // Labelに文字を代入.
        myLabel.text = "Hello Swift!!"
        
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Center
        
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 200)
        
        // ViewにLabelを追加.
        self.view.addSubview(myLabel)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

