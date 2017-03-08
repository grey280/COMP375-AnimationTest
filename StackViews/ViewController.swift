//
//  ViewController.swift
//  StackViews
//
//  Created by Grey Patterson on 2017-03-08.
//  Copyright © 2017 Grey Patterson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func settingsButtonPressed(_ sender: UIButton) {
        for emojiView in emojiViews{
            emojiView.isHidden = !emojiView.isHidden
        }
    }
    @IBOutlet var emojiViews: [UIView]!{
        didSet{
            for emojiView in emojiViews{
                emojiView.isHidden = true
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

