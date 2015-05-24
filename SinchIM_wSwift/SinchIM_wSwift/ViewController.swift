//
//  ViewController.swift
//  SinchIM_wSwift
//
//  Created by Hugh A. Miles on 5/24/15.
//  Copyright (c) 2015 ph7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.createSinchClient("hmiles23")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

