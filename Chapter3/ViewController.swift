//
//  ViewController.swift
//  Chapter3
//
//  Created by Samuel F. Ademola on 1/8/20.
//  Copyright © 2020 Nomizo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender:  UIButton) {
        
        // Creating a dictionary for the emoji
        let emojiDict = ["😱": "Shock", "😤": "Fumming", "🤔": "Interesting", "🙄": "Obviously" ]
        
        // Sender Button
        let selectdButton = sender
        
        if let wordToLookup = selectdButton.titleLabel?.text {
            
            let meaning = emojiDict[wordToLookup]
          
            
            let alertController = UIAlertController(title: "Meaning", message: meaning, preferredStyle: UIAlertController.Style.alert)
            
            alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            present(alertController, animated: true, completion: nil)
            
        }
        
    }
    
}

