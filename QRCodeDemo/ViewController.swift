//
//  ViewController.swift
//  QRCodeDemo
//
//  Created by Haizhen Lee on 15/2/28.
//  Copyright (c) 2015年 banxi1988. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var qrCodeImageView: UIImageView!
    var targetQRCodeImageWidth :UInt = 200

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let demoText = "banxi"
        let width  = self.view.bounds.width / 2.0
        targetQRCodeImageWidth = UInt(width)
        qrCodeImageView.image = QRCodeUtils.qrcodeImageOfString(demoText, withSize: targetQRCodeImageWidth)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
       let text = textField.text
        qrCodeImageView.image = QRCodeUtils.qrcodeImageOfString(text, withSize: targetQRCodeImageWidth)
    }


}

