//
//  ViewController.swift
//  CodePath iOS Prework Demo
//
//  Created by Kevin Liu on 2/1/20.
//  Copyright © 2020 Kevin Liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        backgroundColor = view.backgroundColor;
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        print("Hello");
        
        textLabel.textColor = UIColor.orange;
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.red;
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        // textLabel.text = "Goodbye!";
        
        textLabel.text = textField.text;
        textField.text = "";
        view.endEditing(true);
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello";
        textLabel.textColor = UIColor.black;
        view.backgroundColor = backgroundColor;
    }
}

