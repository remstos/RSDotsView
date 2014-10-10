//
//  ViewController.swift
//  RSDotsViewDemo
//
//  Created by Remi Santos on 10/10/2014.
//  Copyright (c) 2014 Remi Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dotsViewA: RSDotsView!
    @IBOutlet weak var dotsViewB: RSDotsView!
    @IBOutlet weak var dotsViewC: RSDotsView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var dots = RSDotsView(frame: CGRectMake(50, 50, 300, 300))
        dots.backgroundColor = UIColor.clearColor()
        dots.dotsColor = UIColor.redColor()
        dots.startAnimating()
        var center = self.view.center
        dots.center = CGPointMake(center.x, center.y + 50)
        self.view.addSubview(dots)
        
        
        dotsViewA.startAnimating()
        dotsViewB.startAnimating()
        dotsViewC.startAnimating()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

