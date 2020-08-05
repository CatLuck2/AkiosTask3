//
//  ViewController.swift
//  AkiosTask3
//
//  Created by Nekokichi on 2020/08/04.
//  Copyright © 2020 Nekokichi. All rights reserved.
//
/*
 入力欄が未入力かを確認
 一時保存用の変数を用意
 ボタンを押下すると、一時保存した値の符号が反転、一時保存した値を足す
 →ボタンの押下で、①符号の反転　②各ラベルに値を表示させる③値の加算、を行う３
 */

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var value1_label: UILabel!
    @IBOutlet weak var value2_label: UILabel!
    @IBOutlet weak var total_label: UILabel!
    
    var values = [0,0]
    var operatorArray:[Bool] = [true,true]
    
    @IBAction func switch1(_ sender: UISwitch) {
        operatorArray[0].toggle()
    }
    
    @IBAction func switch2(_ sender: UISwitch) {
        operatorArray[1].toggle()
    }
    
    @IBAction func plus(_ sender: Any) {
        values[0] = Int(textField1.text!) ?? 0
        values[0] = operatorArray[0] ? values[0] : -values[0]
        value1_label.text = "\(values[0])"
        
        values[1] = Int(textField2.text!) ?? 0
        values[1] = operatorArray[1] ? values[1] : -values[1]
        value2_label.text = "\(values[1])"
        
        total_label.text = "\(values[0] + values[1])"
    }
    
}

