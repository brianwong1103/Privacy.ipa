//
//  ViewController.swift
//  Privacy
//
//  Created by 黃浩源 on 16/9/2018.
//  Copyright © 2018年 黃浩源. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Notice: UILabel!
    @IBOutlet weak var Password: UITextField!
    @IBOutlet weak var TryPass: UIButton!
    @IBOutlet weak var GetInApp: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GetInApp.isHidden = true
        TryPass.isHidden = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func TryPassAction(_ sender: Any) {
        if(Password.text == "privacypassword"){
            TryPass.isHidden = true
            GetInApp.isHidden = false
            Notice.text = "Password Correct"
        }else{
            TryPass.isHidden = false
            GetInApp.isHidden = true
            Notice.text = "Password Incorrect"
        }
    }
    

}

