//
//  ViewController.swift
//  ListApp
//
//  Created by hikaru nakamata on 2018/10/25.
//  Copyright © 2018 hikaru nakamata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var textField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 追加ボタンが押されたら！
    @IBAction func addButton(_ sender: Any) {

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.appText = textField.text
    }
}
