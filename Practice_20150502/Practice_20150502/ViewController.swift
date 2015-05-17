//
//  ViewController.swift
//  Practice_20150502
//
//  Created by MIMURAAKIRA on 2015/05/02.
//  Copyright (c) 2015年 MIMURAAKIRA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel:UILabel?
    var number: Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
//    self.view.backgroundColor = UIColor.blackColor()

    myLabel = makeLabelToAddView(187.5, y: 244 - 129)
    self.view.addSubview(myLabel!)

//    let button0 = makeButtonToAddView0(187.5, y: 244 - 129, z: "0")
//    self.view.addSubview(button0)
        
    let button1 = makeButtonToAddView1(47, y: 244, title: "AC")
    let button2 = makeButtonToAddView1(47 + 94, y: 244, title: "+/-")
    let button3 = makeButtonToAddView1(47 + 94 * 2, y: 244, title: "%")
    let button4 = makeButtonToAddView2(47 + 94 * 3, y: 244, title: "÷")
    let button5 = makeButtonToAddView(47, y: 244 + 94, title: "7")
    let button6 = makeButtonToAddView(47 + 94, y: 244 + 94, title: "8")
    let button7 = makeButtonToAddView(47 + 94 * 2, y: 244 + 94, title: "9")
    let button8 = makeButtonToAddView2(47 + 94 * 3, y: 244 + 94, title: "×")
    let button9 = makeButtonToAddView(47, y: 244 + 94 * 2, title: "4")
    let button10 = makeButtonToAddView(47 + 94, y: 244 + 94 * 2, title: "5")
    let button11 = makeButtonToAddView(47 + 94 * 2, y: 244 + 94 * 2, title: "6")
    let button12 = makeButtonToAddView2(47 + 94 * 3, y: 244 + 94 * 2, title: "−")
    let button13 = makeButtonToAddView(47, y: 244 + 94 * 3, title: "1")
    let button14 = makeButtonToAddView(47 + 94, y: 244 + 94 * 3, title: "2")
    let button15 = makeButtonToAddView(47 + 94 * 2, y: 244 + 94 * 3, title: "3")
    let button16 = makeButtonToAddView2(47 + 94 * 3, y: 244 + 94 * 3, title: "+")
    let button19 = makeButtonToAddView3(94, y: 244 + 94 * 4, title: "0")
    let button17 = makeButtonToAddView(47 + 94 * 2, y: 244 + 94 * 4, title: ".")
    let button18 = makeButtonToAddView2(47 + 94 * 3, y: 244 + 94 * 4, title: "=")

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
    self.view.addSubview(button19)

    }
    
//    func makeLabelToAddView(x:CGFloat, y:CGFloat) -> UILabel {
    func makeLabelToAddView(x:CGFloat, y:CGFloat) -> UILabel {
        
        // Labelを作成.
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,373,163))
        // 背景をオレンジ色にする.
        myLabel.backgroundColor = UIColor.blackColor()
        // 枠を丸くする.
        myLabel.layer.masksToBounds = false
        // コーナーの半径.
        myLabel.layer.cornerRadius = 0
        // Labelに文字を代入.
        myLabel.text = ""
        myLabel.font = UIFont(name: "Helvetica", size: 50)
        // 文字の色を白にする.
        myLabel.textColor = UIColor.whiteColor()
        // 文字の影の色をグレーにする.
        myLabel.shadowColor = UIColor.grayColor()
        // Textを中央寄せにする.
        myLabel.textAlignment = NSTextAlignment.Right
        // 配置する座標を設定する.
        myLabel.layer.position = CGPoint(x: x, y: y)
        // ViewにLabelを追加.
        return myLabel

    }
    
//    func makeButtonToAddView0(x:CGFloat, y:CGFloat, title:String) -> UIButton {
//        
//        let button = UIButton()
//        //表示されるテキスト
//        button.setTitle(title, forState: .Normal)
//        button.titleLabel!.font = UIFont(name: "Helvetica", size: 50)
//        //テキストの色
//        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
//        //タップした状態のテキスト
//        button.setTitle("?", forState: .Highlighted)
//        //        //タップした状態の色
//        //        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
//        //サイズ
//        button.frame = CGRectMake(0, 0, 373, 163)
//        //配置場所
//        button.layer.position = CGPoint(x: x, y: y)
//        //        button.layer.position = CGPoint(x: self.view.frame.width/2, y: y)
//        //背景色
//        button.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
//        //角丸
//        button.layer.cornerRadius = 0
//        //ボーダー幅
//        button.layer.borderWidth = 1
//        //ボタンをタップした時に実行するメソッドを指定
//        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
//        //viewにボタンを追加する
//        return button
//        
//    }
    
    func makeButtonToAddView(x:CGFloat, y:CGFloat, title:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(title, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 35)
        //テキストの色
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //タップした状態のテキスト
//        button.setTitle("😀", forState: .Highlighted)
//        //タップした状態の色
//        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        //サイズ
        button.frame = CGRectMake(0, 0, 93, 93)
        //配置場所
        button.layer.position = CGPoint(x: x, y: y)
//        button.layer.position = CGPoint(x: self.view.frame.width/2, y: y)
        //背景色
        button.backgroundColor = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1.0)
        //角丸
        button.layer.cornerRadius = 0
        //ボーダー幅
        button.layer.borderWidth = 1
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        //viewにボタンを追加する
        return button
        
    }

    func makeButtonToAddView1(x:CGFloat, y:CGFloat, title:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(title, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 35)
        //テキストの色
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //タップした状態のテキスト
//        button.setTitle("😁", forState: .Highlighted)
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

    func makeButtonToAddView2(x:CGFloat, y:CGFloat, title:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(title, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 40)
        //テキストの色
        button.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        //タップした状態のテキスト
//        button.setTitle("😍", forState: .Highlighted)
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

    func makeButtonToAddView3(x:CGFloat, y:CGFloat, title:String) -> UIButton {
        
        let button = UIButton()
        //表示されるテキスト
        button.setTitle(title, forState: .Normal)
        button.titleLabel!.font = UIFont(name: "Helvetica", size: 35)
        //テキストの色
        button.setTitleColor(UIColor.blackColor(), forState: .Normal)
        //タップした状態のテキスト
//        button.setTitle("😡", forState: .Highlighted)
        //        //タップした状態の色
        //        button.setTitleColor(UIColor.redColor(), forState: .Highlighted)
        //サイズ
        button.frame = CGRectMake(0, 0, 93 * 2, 93)
        //配置場所
        button.layer.position = CGPoint(x: x, y: y)
        //        button.layer.position = CGPoint(x: self.view.frame.width/2, y: y)
        //背景色
        button.backgroundColor = UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1.0)
        //角丸
        button.layer.cornerRadius = 0
        //ボーダー幅
        button.layer.borderWidth = 1
        //ボタンをタップした時に実行するメソッドを指定
        button.addTarget(self, action: "tapped:", forControlEvents:.TouchUpInside)
        //viewにボタンを追加する
        return button
        
    }
    
//課題
//- ２桁の入力方法
//- "+"のとき何故か直後にログにO
//- 場合分けの方法（数字＋"."、各記号？）
//- if (0~9, .) else if (+) else if (-) else if (×) else if (÷) else if (+/-) else if (%) else if (=)
    
    func tapped(button: UIButton) {
        NSLog("%@", button.titleLabel!.text!)
        if (button.titleLabel!.text! == "1" || button.titleLabel!.text! == "2" || button.titleLabel!.text! == "3" || button.titleLabel!.text! == "4" || button.titleLabel!.text! == "5" || button.titleLabel!.text! == "6" || button.titleLabel!.text! == "7" || button.titleLabel!.text! == "8" || button.titleLabel!.text! == "9") {
        myLabel?.text? = button.titleLabel!.text!
        number = (myLabel!.text! as NSString).integerValue
        NSLog("%d", number)
    } else if (button.titleLabel!.text! == "0") {
        myLabel?.text? = button.titleLabel!.text!
    } else if (button.titleLabel!.text! == ".") {
        myLabel?.text? = button.titleLabel!.text!
    } else if (button.titleLabel!.text! == "AC") {
        myLabel?.text? = ""
    } else if (button.titleLabel!.text! == "+/-") {
        myLabel?.text? = ""
    } else if (button.titleLabel!.text! == "%") {
        myLabel?.text? = ""
    } else if (button.titleLabel!.text! == "÷"){
        myLabel?.text? = ""
    } else if (button.titleLabel!.text! == "−") {
        myLabel?.text? = ""
    } else if (button.titleLabel!.text! == "×") {
        myLabel?.text? = ""
    } else if (button.titleLabel!.text! == "+") {
        myLabel?.text? = ""
    } else if (button.titleLabel!.text! == "=") {
//        number = (myLabel!.text! as NSSTring).integerValue
        myLabel?.text? = ""
    }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}