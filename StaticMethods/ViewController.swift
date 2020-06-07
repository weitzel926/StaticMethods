//
//  ViewController.swift
//  StaticMethods
//
//  Created by Wade Weitzel on 5/28/20.
//  Copyright © 2020 Wade Weitzel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    let messageManager = MessageManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonTap(_ sender: Any) {
        messageLabel.text = messageManager.getMessage()
    }
}

