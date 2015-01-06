//
//  ViewController.swift
//  Stopwatch
//
//  Created by Eishan Vijay on 2014-12-21.
//  Copyright (c) 2014 Eishan Vijay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer ()
    
    @IBOutlet weak var time: UILabel!
    var count:Double = 0.0
    var out:String = ""
    
    @IBAction func play(sender: AnyObject) {
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    
    @IBAction func reset(sender: AnyObject) {
        timer.invalidate()
        count = 0
        out = "0"
        time.text = out
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
    }

    func result() {
        count += 0.01
        out = String(format:"%2.2f", count)
        time.text = out
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

