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
        UIView.animate(withDuration: 0.5) { 
            self.emojiViews.forEach{
                $0.isHidden = !$0.isHidden
            }
        }
    }
    @IBOutlet var emojiViews: [UIView]!{
        didSet{
            emojiViews.forEach{
                $0.isHidden = true
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

