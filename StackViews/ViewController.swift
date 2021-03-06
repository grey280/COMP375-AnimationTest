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
        toggleEmojiViews(sender)
    }
    
    @IBAction func settingsSwipeDown(_ sender: Any) {
        let showLoop = {
            self.emojiViews.forEach{
                $0.isHidden = false
            }
        }
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: showLoop, completion: nil)
    }
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        let showLoop = {
            self.emojiViews.forEach{
                $0.isHidden = true
            }
        }
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: showLoop, completion: nil)
    }
    
    @IBAction func toggleEmojiViews(_ sender: UIButton){
        let showLoop = {
            self.emojiViews.forEach{
                $0.isHidden = !$0.isHidden
            }
        }
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: [], animations: showLoop, completion: nil)
    }
    
    @IBOutlet var emojiViews: [UIView]!{
        didSet{ // Hide them all when the view opens; could do this in Storyboard, but that'd be more effort probably
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

