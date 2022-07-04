//
//  ViewController.swift
//  testWebManagerApp
//
//  Created by Maxim on 27.06.2022.
//

import UIKit
import WebSocketManager

class ViewController: UIViewController {
    
    let soc = WebSocketManager()
    @IBOutlet weak var buttonConnect: UIButton!
    @IBOutlet weak var textFieldName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttonConnect.layer.cornerRadius = 5
        buttonConnect.layer.borderWidth = 1
        buttonConnect.layer.borderColor = UIColor.green.cgColor
        buttonConnect.tintColor = .green
    }

    @IBAction func writeToServer(_ sender: Any) {
        soc.connect(roomName: textFieldName.text!, watch: false)
    }
    
}

