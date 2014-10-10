//
//  ViewController.swift
//  RSDotsViewDemo
//
//  Created by Remi Santos on 10/10/2014.
//  Copyright (c) 2014 Remi Santos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var dots = MHDotsView(frame: CGRectMake(50, 50, 200, 200))
        dots.backgroundColor = UIColor.lightGrayColor()
        dots.dotsColor = UIColor.redColor()
        self.view.addSubview(dots)
        dots.startAnimating()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

