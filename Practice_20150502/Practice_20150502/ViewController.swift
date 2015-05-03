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
        
        let button1 = makeButtonToAddView(47, y: 244, z: "AC")
        let button2 = makeButtonToAddView(47 + 94, y: 244, z: "+/-")
        let button3 = makeButtonToAddView(47 + 94 + 94, y: 244, z: "%")
        let button4 = makeButtonToAddView0(47 + 94 + 94 + 94, y: 244, z: "÷")
        let button5 = makeButtonToAddView(47, y: 244 + 94, z: "7")
        let button6 = makeButtonToAddView(47 + 94, y: 244 + 94, z: "8")
        let button7 = makeButtonToAddView(47 + 94 + 94, y: 244 + 94, z: "9")
        let button8 = makeButtonToAddView0(47 + 94 + 94 + 94, y: 244 + 94, z: "×")
        let button9 = makeButtonToAddView(47, y: 244 + 94 + 94, z: "4")
        let button10 = makeButtonToAddView(47 + 94, y: 244 + 94 + 94, z: "5")
        let button11 = makeButtonToAddView(47 + 94 + 94, y: 244 + 94 + 94, z: "6")
        let button12 = makeButtonToAddView0(47 + 94 + 94 + 94, y: 244 + 94 + 94, z: "−")
        let button13 = makeButtonToAddView(47, y: 244 + 94 + 94 + 94, z: "1")
        let button14 = makeButtonToAddView(47 + 94, y: 244 + 94 + 94 + 94, z: "2")
        let button15 = makeButtonToAddView(47 + 94 + 94, y: 244 + 94 + 94 + 94, z: "3")
        let button16 = makeButtonToAddView0(47 + 94 + 94 + 94, y: 244 + 94 + 94 + 94, z: "+")
        let button17 = makeButtonToAddView(47 + 94 + 94, y: 244 + 94 + 94 + 94 + 94, z: ".")
        let button18 = makeButtonToAddView0(47 + 94 + 94 + 94, y: 244 + 94 + 94 + 94 + 94, z: "=")
        
    self.view.addSubview(button1)
    self.view.addSubview(button2)
    self.view.addSubview(button3)
    self.view.addSubview(button4)
    self.view.addSubview(button5)
    self.view.addSubview(button6)
    self.view.addSubview(button7)
    self.view.addSubview(button8)
    self.view.addSubview(button9)
    self.view.addSubview(button10)
    self.view.addSubview(button11)
    self.view.addSubview(button12)
    self.view.addSubview(button13)
    self.view.addSubview(button14)
    self.view.addSubview(button15)
    self.view.addSubview(button16)
    self.view.addSubview(button17)
    self.view.addSubview(button18)

    let button19 = makeButtonToAddView2(94, y: 244 + 94 + 94 + 94 + 94, z: "0")
    self.view.addSubview(button19)

    let button0 = makeButtonToAddView1(47, y: 244 - 129, z: "0")
    self.view.addSubview(button0)

    }

    func makeButtonToAddView(x:CGFloat, y:CGFloat, z:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(z, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 35)
        //テキストの色
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //タップした状態のテキスト
        button.setTitle("?", forState: .Highlighted)
//        //タップした状態の色
//        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        //サイズ
        button.frame = CGRectMake(0, 0, 93, 93)
        //配置場所
        button.layer.position = CGPoint(x: x, y: y)
//        button.layer.position = CGPoint(x: self.view.frame.width/2, y: y)
        //背景色
        button.backgroundColor = UIColor(red: 160/255, green: 160/255, blue: 160/255, alpha: 1.0)
        //角丸
        button.layer.cornerRadius = 0
        //ボーダー幅
        button.layer.borderWidth = 1
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        //viewにボタンを追加する
        return button
        
    }

    func makeButtonToAddView0(x:CGFloat, y:CGFloat, z:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(z, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 40)
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        //タップした状態のテキスト
        button.setTitle("?", forState: .Highlighted)
        //        //タップした状態の色
        //        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        //サイズ
        button.frame = CGRectMake(0, 0, 93, 93)
        //配置場所
        button.layer.position = CGPoint(x: x, y: y)
        //        button.layer.position = CGPoint(x: self.view.frame.width/2, y: y)
        //背景色
        button.backgroundColor = UIColor(red: 255/255, green: 120/255, blue: 0/255, alpha: 1.0)
        //角丸
        button.layer.cornerRadius = 0
        //ボーダー幅
        button.layer.borderWidth = 1
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        //viewにボタンを追加する
        return button
        
    }
    
    func makeButtonToAddView1(x:CGFloat, y:CGFloat, z:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(z, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 50)
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        //タップした状態のテキスト
        button.setTitle("?", forState: .Highlighted)
//        //タップした状態の色
//        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        //サイズ
        button.frame = CGRectMake(0, 0, 655, 163)
        //配置場所
        button.layer.position = CGPoint(x: x, y: y)
//        button.layer.position = CGPoint(x: self.view.frame.width/2, y: y)
        //背景色
        button.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
        //角丸
        button.layer.cornerRadius = 0
        //ボーダー幅
        button.layer.borderWidth = 1
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        //viewにボタンを追加する
        return button
        
    }

    func makeButtonToAddView2(x:CGFloat, y:CGFloat, z:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(z, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 35)
        //テキストの色
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //タップした状態のテキスト
        button.setTitle("?", forState: .Highlighted)
//        //タップした状態の色
//        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        //サイズ
        button.frame = CGRectMake(0, 0, 93 * 2 + 1, 93)
        //配置場所
        button.layer.position = CGPoint(x: x, y: y)
//        button.layer.position = CGPoint(x: self.view.frame.width/2, y: y)
        //背景色
        button.backgroundColor = UIColor(red: 160/255, green: 160/255, blue: 160/255, alpha: 1.0)
        //角丸
        button.layer.cornerRadius = 0
        //ボーダー幅
        button.layer.borderWidth = 1
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        //viewにボタンを追加する
        return button
        
    }
    
    func tapped(button: UIButton) {
        NSLog("tapped")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}